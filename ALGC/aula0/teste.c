#include <stdio.h>

int main (void) {
	printf("%ld\n", __STDC_VERSION__);
	puts("Hello World\n");
	puts("Pedro");
	puts("Almeida");

	char name[50];

	puts("Whats your name?");
	fgets(name, 50, stdin);

	printf("Hello %s\n", name);


	char n[50];
	puts("Write something");
	scanf("%s", n);
	printf("->%s\n", n);

	return 0;
}
