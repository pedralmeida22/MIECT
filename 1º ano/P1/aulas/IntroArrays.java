import java.util.*;


public class IntroArrays {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int k;
		System.out.print(" Numero de elementos: ");
		k = sc.nextInt();
		
		//leitura
		int a[];
		a = new int[k];
		for(int i = 0; i < k; i++) {
			System.out.println(" Valor para a posicao " + i);
			a[i] = sc.nextInt();
		}
		System.out.println();
		//imprimir
		for(int i = k-1; i >= 0; i--) {
			System.out.println(" a posicao a[" + i + "] tem o valor " + a[i]);
			System.out.println();
		}
		
	}
}

