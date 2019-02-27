import java.util.*;


public class FuncaoNPrimos {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int m;
		System.out.print(" Insira um numero: ");
		m = sc.nextInt();
		
		if(nPrimos(m)){
			System.out.print(" O numero e primo");
		}else {
			System.out.print(" O numero nao e primo");
		}
	}
	
	public static boolean nPrimos(int n){
		for(int i = n-1; i > 1; i--){
			if(n % i == 0)
				return false;
		}
		return true;
	}
}


