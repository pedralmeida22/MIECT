import java.util.*;


public class Strings_ex9_2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String frase = new String();
		
			System.out.println(" Esvreva uma frase: ");
			frase = sc.nextLine();
			System.out.print(" Acronimo -> " + acronimos(frase));
}
	public static String acronimos(String frase) {
		String acro = new String();
		for(int i = 0; i < frase.length(); i++) {
			if(Character.isUpperCase(frase.charAt(i))){
					acro = acro + frase.charAt(i);					
			}
		}
		return acro;
	}
}

