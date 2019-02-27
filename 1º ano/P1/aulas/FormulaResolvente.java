import java.util.*;

public class FormulaResolvente {
	
	public static void main (String[] args) {
		Scanner ler = new Scanner(System.in);
		
		// definir coeficientes do polinómino
		  double a, b, c;
		double r1, r2; //raizes
		System.out.println("Introduza coeficientes da seguinte forma ax+by+c:");
		a= ler.nextDouble();
		b=ler.nextDouble();
		c=ler.nextDouble();
		
	    //se a for diferente de 0
		if (a !=0) {  
		//calculo usando formula resolvente
		r1 = (-b + Math.sqrt(b*b - 4*a*c));
		r2 = (-b - Math.sqrt(b*b - 4*a*c));
		
		//imprimir raizes
		System.out.printf("Raiz 1 = %6f Raiz 2 = %6f \n", r1,r2);
	   
	    //se a for igual a 0
		} else {
		System.out.printf("Polinómino não é do 2º grau!! \n");
	}
	}
}

