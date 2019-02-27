import java.util.*;


public class FatorialM {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int m;
		int fat=1;
		
		System.out.print(" Fatorial de (insira um numero menor que 10): ");
		m = sc.nextInt();
		
		for(int i=1; i<=m; i++)
		fat = fat * i;
		{
			System.out.printf(" %d ! = ", m);
			System.out.println(fat);
			
		}
	}
}

