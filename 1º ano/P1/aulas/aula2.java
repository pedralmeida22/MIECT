
import java.util.*;

public class aula2 {
	
	public static void main (String[] args) {
		 Scanner ed = new Scanner(System.in);
		 
		 double dolares, taxa;
		 
		 System.out.println("Dolares");
		 dolares = ed.nextDouble();
		 
		 System.out.println("Taxa de conversão");
		 taxa = ed.nextDouble();
		 
		 
		 System.out.printf("%5.2f Dolares equivalem a %5.2f Euros", dolares, dolares*taxa);
		 
		 
		 
		
	}
}

