import java.util.*;


public class Strings_ex9_1 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String frase = new String();
		int contarVogais = 0;
		int contarConsoantes = 0;
		
		System.out.println(" Escreva uma frase: ");
		frase = sc.nextLine();
		
		for(int i = 0; i < frase.length(); i++) {
			if(Character.isLetter(frase.charAt(i)))
				if(vogais(frase.charAt(i))) {
					contarVogais++;
				}else contarConsoantes++;
		}
				
		
		System.out.print(" Numero de maiusculas -> " + contarMaiusculas(frase));
		System.out.print("\n");
		System.out.print(" Numero de minusculas -> " + contarMinusculas(frase));
		System.out.print("\n");
		System.out.print(" Numero de numeros -> " + contarNumeros(frase));
		System.out.print("\n");
		System.out.print("Numero de vogais -> "  + contarVogais);
		System.out.print("\n");
		System.out.print("Numero de consoantes -> "  + contarConsoantes);
		

	}
	public static int contarMaiusculas(String frase) {
		int count = 0;
		
		for(int i = 0; i < frase.length(); i++) {
			if(Character.isUpperCase(frase.charAt(i)))
			count++;
		}
	return count;
	}
	public static int contarMinusculas(String frase) {
		int count = 0;
		
		for(int i = 0; i < frase.length(); i++) {
			if(Character.isLowerCase(frase.charAt(i)))
			count++;
		}
	return count;
	}
	public static int contarNumeros(String frase) {
		int count = 0;
		
		for(int i = 0; i < frase.length(); i++) {
			if(Character.isDigit(frase.charAt(i)))
			count++;
		}
		return count;
	}
	public static boolean vogais(char c) {
		if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
			return true;
		return false;
	}
}

