import java.util.*;


public class FuncaoAsteriscos {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int lar, comp;
		
		System.out.print(" Largura: ");
		lar = sc.nextInt();
		System.out.print(" Comprimento: ");
		comp = sc.nextInt();
		
		printNTimes("*", comp);
		System.out.println();
		for(int i = 0; i < lar - 2; i++){
			System.out.print("*");
			printNTimes(" ", comp - 2);
			System.out.println("*");
		}
		printNTimes("*", comp);
	}
	
	public static void printNTimes(String str, int n){
		for(int i = 0; i < n; i++){
			System.out.print(str);
		}
	}
}

