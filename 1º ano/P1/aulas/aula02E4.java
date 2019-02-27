	import java.util.*;

public class aula02E4 {
	
	public static void main (String[] args) {
        Scanner dist = new Scanner(System.in);
		
		double x1, y1, x2, y2, scale, distancia;
		System.out.println("Primeiro ponto:");
		System.out.println("x1:");
		x1 = dist.nextDouble();
		
		System.out.println("y1:");
		y1 = dist.nextDouble();
		
		System.out.println("Segundo ponto:");
		System.out.println("x2:");
		x2 = dist.nextDouble();
		
		System.out.println("y2:");
		y2 = dist.nextDouble();
		
		System.out.println("Scale:");
		scale = dist.nextDouble();
		
		distancia = Math.sqrt(Math.pow((x1-x2),2) + Math.pow((y1-y2),2));
		
		System.out.printf("Distância = %3.2f)", distancia);
		
		
		
		
		
		
		
	}
}

