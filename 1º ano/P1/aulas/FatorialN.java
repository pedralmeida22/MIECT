import java.util.*;


public class FatorialN {
	
	 
	public static void main (String args[]) {
		Scanner ler = new Scanner (System.in);
		int n, fact;
		
		System.out.print(" Fatorial de: ");
		n = ler.nextInt();
		
		System.out.printf(" %d! = %d \n", n, factorial(n));
		
		for (n=2; n<15; n++) {
			fact = 1;
			for (int i = 1; i<= n; i++) {
				fact = fact * i;
			}
			System.out.printf(" %d! = %d \n", n, factorial(n));
		
	}
}
	
	 public static int factorial (int n){
		int fact = 1;
		if (n>0 && n<15) {
			for (int i = 1; i <= n; i++) {
				fact = fact * i;
			}
		}else {
			fact = -1;
		}
		return fact;
	}
}

