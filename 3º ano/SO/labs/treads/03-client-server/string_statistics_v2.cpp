//
// Created by rrosmaninho on 25/11/19.
//

#include  <stdio.h>
#include  <stdlib.h>
#include  <stdint.h>
#include  <libgen.h>
#include  <unistd.h>
#include  <sys/wait.h>
#include  <sys/types.h>
#include  <pthread.h>
#include  <math.h>
#include  <string>

#include  "thread.h"
#include  "utils.h"

using namespace std;

/** \brief internal storage size of <em>FIFO memory</em> */
#define  FIFOSZ         15

typedef struct FIFO {
    unsigned int ii;   ///< point of insertion
    unsigned int ri;   ///< point of retrieval
    unsigned int cnt;  ///< number of items stored
    uint32_t slot[FIFOSZ];  ///< storage memory
    pthread_cond_t isNotEmpty = PTHREAD_COND_INITIALIZER;
    pthread_cond_t isNotFull = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t access = PTHREAD_MUTEX_INITIALIZER;
} FIFO;

typedef struct ServiceRequest {
    uint32_t client_id;
    string req_string;
} ServiceRequest;

typedef struct ServiceResponse {
    uint32_t server_id;
    uint32_t char_num;
    uint32_t letter_num;
    uint32_t digit_num;
} ServiceResponse;

typedef struct SLOT {
    ServiceRequest req;
    ServiceResponse res;
    bool responseIsAvailable = false;
    pthread_cond_t isAvailable = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t access = PTHREAD_MUTEX_INITIALIZER;
} SLOT;

static SLOT slots[FIFOSZ];
static FIFO pending_slots;
static FIFO free_slots;

/* Initialization of the FIFO */
void freeInit() {
    mutex_lock(&free_slots.access);

    unsigned int i;
    for (i = 0; i < FIFOSZ; i++) {
        free_slots.slot[i] = i;
    }
    free_slots.ii = 0;
    free_slots.ri = 0;
    free_slots.cnt = FIFOSZ;

    cond_signal(&free_slots.isNotEmpty);

    mutex_unlock(&free_slots.access);
}

/* Initialization of the FIFO */
void pendingInit() {
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

void insert(FIFO *fifo, uint32_t id) {
    mutex_lock(&fifo->access);

    while(fifoFull(fifo)){
        cond_wait(&fifo->isNotFull, &fifo->access);
    }

    /* Insert */
    fifo->slot[fifo->ii] = id;
    fifo->ii = (fifo->ii + 1) % FIFOSZ;
    fifo->cnt++;

    cond_signal(&fifo->isNotEmpty);

    mutex_unlock(&fifo->access);
}

uint32_t retrieve(FIFO *fifo) {
    mutex_lock(&fifo->access);

    while(fifoEmpty(fifo)){
        cond_wait(&fifo->isNotEmpty, &fifo->access);
    }

    /* Retrieve */
    uint32_t res;
    res = fifo->slot[fifo->ri];
    fifo->ri = (fifo->ri + 1) % FIFOSZ;
    fifo->cnt--;

    cond_signal(&fifo->isNotFull);

    mutex_unlock(&fifo->access);
    return res;
}

void signalResponseIsAvailable(uint32_t id) {
    mutex_lock(&slots[id].access);
    slots[id].responseIsAvailable = true;
    cond_signal(&slots[id].isAvailable);
    mutex_unlock(&slots[id].access);
}

void waitForResponse(uint32_t id) {
    mutex_lock(&slots[id].access);
    while(!slots[id].responseIsAvailable) {
        cond_wait(&slots[id].isAvailable, &slots[id].access);
    }
    slots[id].responseIsAvailable = false;
    mutex_unlock(&slots[id].access);
}

void callService(ServiceRequest & req, ServiceResponse & res){
    uint32_t slot_id = retrieve(&free_slots);
    mutex_lock(&slots[slot_id].access);
    slots[slot_id].req = req;
    slots[slot_id].res = res;
    printf("Client #%d requested processing of String \"%s\"\n", slots[slot_id].req.client_id, slots[slot_id].req.req_string.c_str());
    mutex_unlock(&slots[slot_id].access);
    insert(&pending_slots, slot_id);
    waitForResponse(slot_id);
    mutex_lock(&slots[slot_id].access);
    printf("Response from server #%d to client #%d: %d chars, %d letters, %d digits\n", slots[slot_id].res.server_id, slots[slot_id].req.client_id, slots[slot_id].res.char_num, slots[slot_id].res.letter_num, slots[slot_id].res.digit_num);
    mutex_unlock(&slots[slot_id].access);
    insert(&free_slots, slot_id);
}

void processService(uint32_t server_id) {
    uint32_t slot_id = retrieve(&pending_slots);
    mutex_lock(&slots[slot_id].access);
    string req = slots[slot_id].req.req_string;
    slots[slot_id].res.server_id = server_id;
    slots[slot_id].res.char_num = req.length();
    for(unsigned long i = 0; i < req.length(); i++) {
        if(isdigit(req[i]) != 0) {
            slots[slot_id].res.digit_num++;
        }
        if(isalpha(req[i]) != 0) {
            slots[slot_id].res.letter_num++;
        }
    }
    mutex_unlock(&slots[slot_id].access);
    signalResponseIsAvailable(slot_id);
}

void *client(void *argp){
    uint32_t runtime = 600;
    uint32_t id = *((int *) argp);

    while(1) {
        ServiceRequest* req = new ServiceRequest();
        req->client_id = id;
        req->req_string = "Test String 1";
        ServiceResponse* res = new ServiceResponse();
        callService(*req, *res);
        free(req);
        free(res);

        runtime--;
        if(runtime == 0){
            return 0;
        }
    }
}

void *server(void *argp){
    uint32_t id = *((int *) argp);

    while(1) {
        processService(id);
    }
}

int main() {
    freeInit();
    pendingInit();

    pthread_t clients[8];
    pthread_t servers[3];

    printf("Launching 3 server threads\n");
    for(int i = 0; i < 3; i++) {
        int *id = (int*) malloc(sizeof(*id));
        *id = i;
        thread_create(&servers[i], NULL, server, id);
    }

    printf("Launching 8 client threads\n");
    for(int i = 0; i < 8; i++) {
        int *id = (int*) malloc(sizeof(*id));
        *id = i;
        thread_create(&clients[i], NULL, client, id);
    }

    printf("Waiting for clients to finish...\n");

    for(int i = 0; i < 8; i++) {
        thread_join(clients[i], NULL);
        printf("Client thread #%d has reached end of runtime\n", i);
    }

    for(int i = 0; i < 3; i++) {
        thread_cancel(servers[i]);
        printf("Server thread #%d has been cancelled\n", i);
    }

    return 0;
}
