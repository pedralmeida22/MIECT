import java.util.*;


public class NumPrimos {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int x;
		System.out.print(" Introduza um numero inteiro: ");
		x = sc.nextInt();
		for(int i=2; i<x; i++){
			if( x%i==0){
			System.out.print(" Nao e primo");
			System.exit(0);
			}
		}
		
		System.out.print("E primo");
		
	}
}

