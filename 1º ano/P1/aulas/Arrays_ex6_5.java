import java.util.*;


public class Arrays_ex6_5 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int n;
		
		System.out.println("Insira numero de elementos da lista: ");
		n = sc.nextInt();
		
		int[] y = new int[n];
		for(int i = 0; i < n; i++) {
			System.out.print("Numero: ");
			y[i] = sc.nextInt();
		}
		System.out.printf("A media da lista e %f", media(y, n));
	}
	public static double media(int[] y, int n) {
		int soma = 0;
		double media;
		for(int i = 0; i < n; i++) {
			soma = soma + y[i];
		}
		media = (double)soma / n;
		return media;
	}
}

