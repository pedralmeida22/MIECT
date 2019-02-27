import java.util.*;


public class ParesSoma {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int n;
		int soma = 0;
		
		System.out.print(" Numero de termos pares: ");
		n = sc.nextInt();
			
		for(int i = 1; i<=n*2; i++) {
			if( i % 2 == 0){
				System.out.println(i);
			soma = soma + i;
			}
		}
		
		System.out.printf(" A soma dos primeiros n numeros pares e %d \n", soma);
		}
	}


