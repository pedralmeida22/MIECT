import java.util.*;

public class Arrays_ex6_2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int p, x, count = 0;
		int[] y = new int[100];
		
		System.out.println(" Insira numero que deseja contar: ");
		p = sc.nextInt();
		
		for(int i = 0; i < y.length; i++) { 
			System.out.print("Valor: "); 
			x = sc.nextInt(); 
			if(x == 0) break;
			if (x == p) count++;
			y[i] = x;	
		}
		System.out.printf(" O numero %d apareceu %d vezes", p, count);
	}
}

