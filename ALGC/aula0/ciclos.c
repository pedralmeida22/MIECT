#include <stdio.h>
#include <math.h>

int main (void){
	printf("%s | %s | %s\n", "i", "i*i", "SQRT");
	printf("--------------\n");
	for(int i = 1; i <= 5; i++){
		printf("%2d | %3d | %17.15f\n", i, i*i, sqrt((double)i));
	}

	double factor = M_PI / 180;

	printf("%s | %s | %s\n", "sin", "COS", "sin² + COS²");
	printf("-----------------------\n");
	for(int j = 0; j < 12; j++){
		int i = j * 30;
		double sinValue = sin(i * factor);
		double cosValue = cos(i * factor);
		double sum = sinValue*sinValue + cosValue*cosValue;

		printf("%3d | %13.10f | %13.10f | %13.10f\n", i, sinValue, cosValue, sum);
	}
}
