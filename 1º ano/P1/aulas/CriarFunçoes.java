import java.util.*;

public class CriarFuncoes {
	
	static public double sqr(double x){
		return x*x; //devolver o resultado
	}
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("sqr(%f) = %f\n", 10.1, sqr(10.1));
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(-2.0));
		System.out.print(" Valor ?");
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(sc.nextDouble()));
		
	}
}

