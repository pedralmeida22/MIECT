import java.util.*;


public class Exer1_5 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		double n, soma = 0, media;
		int count = 0;
		do{
			System.out.print("N: \n");
			n = sc.nextDouble();
			soma += n;
			count++;
		}while(n != 0);
		
		media = soma/(count-1);
		
		System.out.printf("Soma: %f\n", soma);
		System.out.printf("Media: %f", media);
	}
}

