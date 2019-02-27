import java.util.*;

public class CriarFuncoes {
	
	static public double sqr(double x){
		return x*x; //devolver o resultado
	}
	
	public static double max(double x, double y) {
		System.out.println(" Max para numeros reais: ");
		return (x>y) ? x:y;
	}
	
	public static double min(double x, double y) {
		System.out.println(" Min para numeros reais: ");
		return (x<y) ? x:y;
	}
	public static int max(int x, int y) {
		System.out.println(" Max para numeros inteiros: ");
		return (x>y) ? x:y;
	}
	public static int min(int x, int y) {
		System.out.println(" Min para numeros inteiros: ");
		return (x<y) ? x:y;
	}
	
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("sqr(%f) = %f\n", 10.1, sqr(10.1));
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(-2.0));
		System.out.print(" Valor ?");
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(sc.nextDouble()));
		System.out.printf("Max(%d) = %d\n", 5, 8);
		System.out.printf("Min(%d) = %d\n", 8, 5);
	}
}

