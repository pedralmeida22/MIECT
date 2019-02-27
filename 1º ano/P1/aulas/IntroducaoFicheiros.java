import java.util.*;
import java.io.*;


public class IntroducaoFicheiros {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		double a, b;
		
		System.out.print(" Valor de a: ");
		a = sc.nextDouble();
		System.out.print(" Valor de b: ");
		b = sc.nextDouble();
		
		File my_file = new File("IntroducaoFicheiros");
		
		PrintWriter pw = new PrintWriter(my_file);
		
		pw.printf(" %.2f + %.2f = %.2f \n", a, b, a + b);
		pw.printf(" %.2f - %.2f = %.2f \n", a, b, a - b);
		pw.printf(" %.2f * %.2f = %.2f \n", a, b, a * b);
		pw.printf(" %.2f / %.2f = %.2f \n", a, b, a / b);
		pw.printf(" %d %% %d = %d \n", (int)a, (int)b, (int)a % (int)b);
		
		pw.close();
	}
}

