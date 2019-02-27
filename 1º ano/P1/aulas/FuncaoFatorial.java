import java.util.*;


public class FuncaoFatorial {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int x;
		System.out.print(" Fatorial de: ");
		x = sc.nextInt();
		
		for (int i = x; i>=1; i--) {
		System.out.printf(" %d ! = %d \n", i, fatorial(i));
	}
		
	}
	public static int fatorial(int n){
	for( int i = n - 1; i > 0; i--){
	n = n * i;
	}
	return n;
	}
}


