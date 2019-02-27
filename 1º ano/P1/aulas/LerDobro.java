import java.util.*;


public class LerDobro {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		System.out.print(" Insira uma lista de numeros inteiros positivos: ");
		int sent = 0;
		int x = 0;
		int max, min;
		max = sent;
		min = sent;
		
		while(true) {
			x = sc.nextInt();
			if(sent == 0)sent = x;
			if(x==2*sent) {
				System.out.printf(" O maior numero introduzido foi %d \n", max);
				System.out.printf(" O menor numero introduzido foi %d \n", min);
				System.out.printf(" Os numeros que forcaram a paragem foram %d e %d \n", sent, x);
				System.exit(0);
			}
			else if(x>max) max = x;
			else if(x<min) min = x;
			
			
		}
			
	}
}

