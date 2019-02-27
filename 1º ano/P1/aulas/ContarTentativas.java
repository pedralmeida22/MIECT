import java.util.*;


public class ContarTentativas {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int x, cont=0;
		
		do{
			System.out.print(" Introduza um numero inteiro positivo: ");
			x = sc.nextInt();
			cont++;
		} while (x >= 0);
		
		System.out.printf( "Numero de numeros introduzidos: %d",cont); 
		
	}
}

