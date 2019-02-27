import java.util.*;


public class CalcularNotaFinal {
	
	public static void main (String[] args) {
		Scanner nt = new Scanner(System.in);
		
		double TP1, TP2, API, EP, notafinal;
		
		System.out.println("Inserir Nota TP1:");
		TP1 = nt.nextDouble();
		
		System.out.println("Inserir Nota TP2:");
		TP2 = nt.nextDouble();
		
		System.out.println("Inserir Nota API:");
		API = nt.nextDouble();
		
		System.out.println("Inserir Nota EP:");
		EP = nt.nextDouble();
		
		notafinal = (TP1*0.15)+(TP2*0.15)+(API*0.3)+(EP*0.4);
		
		if (notafinal <= 9.5)
		{
			System.out.print("Reprovado");
		}
		else
		{
			System.out.print("Aprovado");
		}
	}	
}

