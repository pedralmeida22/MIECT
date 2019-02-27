import java.util.*;


public class SequenciaArrays { //FEITO SEM ARRAYS
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int x, count = 0, p, countp = 0;
		
		System.out.println(" Insira o valor a ler na sequencia: ");
		p = sc.nextInt();
		
		do{
			System.out.print(" Valor: ");
			x = sc.nextInt();
			count++;
			if(x == p) countp++;
		}while(x > 0 || count == 100);
		
		System.out.printf(" O valor %d aparece %d vezes", p, countp);
	
	}
}

