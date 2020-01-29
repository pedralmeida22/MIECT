#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <stdbool.h>
#include <errno.h>
#include <string.h>

#include "thread.h"
#include "fifo.h"
#include "delays.h"

using namespace std;

/** \brief internal storage size of <em>FIFO memory</em> */
#define  FIFOSZ         5

typedef struct FIFO {
    unsigned int ii;   ///< point of insertion
    unsigned int ri;   ///< point of retrieval
    unsigned int cnt;  ///< number of items stored
    uint32_t slot[FIFOSZ];  ///< storage memory
    pthread_cond_t isNotFull = PTHREAD_COND_INITIALIZER;
    pthread_cond_t isNotEmpty = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t access = PTHREAD_MUTEX_INITIALIZER;
} FIFO;

typedef struct ServiceRequest {
    uint32_t client_id;
    char req_string;
} ServiceRequest;

typedef struct ServiceResponse {
    uint32_t server_id;
    uint32_t nchars;
    uint32_t ndigits;
    uint32_t nletters;
} ServiceResponse;

typedef struct Slot {
    ServiceRequest req;
    ServiceResponse res;
    bool answer;
    pthread_cond_t isAvailable = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t access = PTHREAD_MUTEX_INITIALIZER;
} Slot;

static Slot slots[FIFOSZ];
static FIFO free_slots;
static FIFO pending_slots;

// funções de inicialização
void freeInit(){
    mutex_lock(&free_slots.access);
    
    unsigned int i;
    for(i = 0; i < FIFOSZ; i++){
        free_slots.slot[i] = i;
    }
    free_slots.ii = 0;
    free_slots.ri = 0;
    free_slots.cnt = FIFOSZ;

    cond_signal(&free_slots.isNotEmpty);

    mutex_unlock(&free_slots.access);
}

void pendingInit(){
    mutex_lock(&pending_slots.access);

    pending_slots.ii = 0;
    pending_slots.ri = 0;
    pending_slots.cnt = 0;

    cond_signal(&pending_slots.isNotFull);

    mutex_unlock(&pending_slots.access);
}

/* Check if FIFO is full */
static bool fifoFull(FIFO *fifo) {
    return fifo->cnt == FIFOSZ;
}

/* Check if FIFO is empty */
static bool fifoEmpty(FIFO *fifo) {
    return fifo->cnt == 0;
}


// insert an id into a fifo
void insert(FIFO * fifo, uint32_t id){
    mutex_lock(&fifo->access);

    while(fifoFull(fifo)){
        cond_wait(&fifo->isNotFull, &fifo->access);
    }

    fifo->slot[fifo->ii] = id;
    fifo->ii = (fifo->ii + 1) % FIFOSZ;
    fifo->cnt++;

    cond_signal(&fifo->isNotEmpty);

    mutex_unlock(&fifo->access);
    
}


// retrieve an id from a fifo, blocking if necessary
uint32_t retrieve(FIFO * fifo){
    mutex_lock(&fifo->access);

    while(fifoEmpty(fifo)){
        cond_wait(&fifo->isNotEmpty, &fifo->access);
    }

    uint32_t res;
    res = fifo->slot[fifo->ri];
    fifo->ri = (fifo->ri + 1) % FIFOSZ;     
    fifo->cnt--;

    cond_signal(&fifo->isNotFull);

    mutex_lock(&fifo->access);
    
    return res;
}


// signal client that the response is available
void signalResponseIsAvailable(uint32_t id){
    mutex_lock(&slots[id].access);

    slots[id].answer = true;
    cond_signal(&slots[id].isAvailable);

    mutex_unlock(&slots[id].access);
}


// block client until its response is available
void waitForResponse(uint32_t id){
    mutex_lock(&slots[id].access);

    while(!slots[id].answer){
        cond_wait(&slots[id].isAvailable, &slots[id].access);
    }

    slots[id].answer = false;

    mutex_unlock(&slots[id].access);
    
}


void callService(ServiceRequest & req, ServiceResponse & res){
    uint32_t slot_id = retrieve(&free_slots);
    
    mutex_lock(&slots[slot_id].access);
    slots[slot_id].req = req;
    slots[slot_id].res = res;
    printf("Client #%d requested processing of String\n", slots[slot_id].req.client_id);
    mutex_unlock(&slots[slot_id].access);

    insert(&pending_slots, slot_id);
    waitForResponse(slot_id);

    mutex_lock(&slots[slot_id].access);
    printf("Response from server #%d to client #%d: %d chars, %d letters, %d digits\n", slots[slot_id].res.server_id, slots[slot_id].req.client_id, slots[slot_id].res.nchars, slots[slot_id].res.nletters, slots[slot_id].res.ndigits);
    mutex_unlock(&slots[slot_id].access);

    insert(&free_slots, slot_id);
}


void processService(){
    uint32_t slot_id = retrieve(&pending_slots);

    mutex_lock(&slots[slot_id].access);
    char s = slots[slot_id].req.req_string;
    slots[slot_id].res.nchars = 10;
    slots[slot_id].res.ndigits = 20;
    slots[slot_id].res.nletters = 30;
    mutex_unlock(&slots[slot_id].access);
    
    signalResponseIsAvailable(slot_id);

}

void *client(void *argp) {
    uint32_t id = *((int *) argp);

    while(1){
        ServiceRequest* req = new ServiceRequest();
        req->client_id = id;
        req->req_string = 'f';

        ServiceResponse* res = new ServiceResponse();
        callService(*req, *res);
    }
    
}


void *server(void *argp) {
    while (1)
    {
        processService();
    }
    
}



int main(){
    freeInit();
    pendingInit();

    pthread_t clients;
    pthread_t servers;

    printf("Launching server...\n");
    thread_create(&servers, NULL, server, (int *) 1);

    printf("Launching client...\n");
    thread_create(&clients, NULL, client, (int *) 1);

    return 0;
}