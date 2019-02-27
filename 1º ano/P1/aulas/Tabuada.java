import java.util.*;


public class Tabuada {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int n;
		
		System.out.print(" Tabuada do:");
		n = sc.nextInt();
		
		for(int i=0; i<=10; i++)
		{
			System.out.printf("%d   x   %d  = ", n, i);
			System.out.println(n * i);
		}

	}
}

