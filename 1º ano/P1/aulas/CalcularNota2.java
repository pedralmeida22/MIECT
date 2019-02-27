import java.util.*;


public class CalcularNota2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		double soma = 0;
		double count = 0;
		
		while(true){
			System.out.print(" Nota? ");
			int x = sc.nextInt();
			if(x<0 || x>20){
				System.out.println(" Soma: " + soma);
				System.out.println(" Media: " + soma/count);
				System.exit(0);
		}
		soma = soma + x;
		count++;
	} 
		
		
	}
}

