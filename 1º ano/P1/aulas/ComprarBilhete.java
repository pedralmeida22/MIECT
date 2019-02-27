import java.util.*;


public class ComprarBilhete {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner(System.in);
		
		int age;
		
		System.out.print("Insira sua idade:");
		age = kb.nextInt();
		
		if (age<6) System.out.print("Isento de pagamento");
		else if (age<=12)System.out.print("Bilhete criança");
		else if (age<=65)System.out.print("Bilhete normal");
		else System.out.print("Bilhete 3 idade");
		
	}
}

