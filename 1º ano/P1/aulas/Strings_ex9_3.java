import java.util.*;

public class Strings_ex9_3 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int count = 0;
		String frase = new String();
		System.out.println(" Escreva uma frase (Acabe com pontuacao e nao repita pontuacao)): ");
		frase = sc.nextLine();
		System.out.printf(" A frase tem %d palavras.", countWords(frase));
	}
	public static int countWords(String frase) {
		int count = 0;
		char c;
		for(int i = 0; i < frase.length(); i++) {
			c = frase.charAt(i);
			if(c == '\n' || c == '\t' || c == ' ' || c == '.' || c == '!' || c == '?')
			count++;
		}
		return count;
	}
}

