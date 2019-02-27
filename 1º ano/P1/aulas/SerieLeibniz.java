import java.util.*;


public class SerieLeibniz {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int n;
		double result = 1.0, denominador = 3.0;
		
		System.out.print(" Numero de termos: ");
		n = sc.nextInt();
		
		for (int i=1; i<=n; i++)
		{
			if( i % 2 == 0){
				result = result + (double)(1.0 / denominador);
			} else { 
				result = result - (double)(1.0 / denominador);
			}
			denominador = denominador + 2;
			}
			System.out.print(result);
	}
}

