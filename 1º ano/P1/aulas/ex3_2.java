import java.util.*;


public class ex3_2 {
	
	public static void main (String args[]) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Introduza uma lista de numeros (terminada com 0):");
		double count = 1;
		while(true){
			double x = sc.nextDouble();
			if(x == 0){
				System.out.print("Produto = " + count);
				System.exit(0);
			}
			count = count * x;
		}
	}
}



