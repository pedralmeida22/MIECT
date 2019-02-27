import java.util.*;


public class MDC {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int n1, n2;
		System.out.print(" Introduza um numero: ");
		n1 = sc.nextInt();
		System.out.print(" Introduza outro numero: ");
		n2 = sc.nextInt();
		
		do{
			if (n1<n2){
				n2=n2-n1;
			}else 
			n1=n1-n2;
		}while (n1!=n2);
		
		System.out.printf(" O maior divisor comum e: %d", n1);
	}
}

