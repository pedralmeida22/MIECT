import java.util.*;


public class Exer1_4 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String frase;
		
		while(true){
			System.out.println("Linha: ");
			frase = sc.nextLine();
			if(frase.length() == 0) break;
			System.out.printf("%s \n", traduzir(frase));
		}
	}
	public static String traduzir(String s){
		String t = "";
		for(int i = 0; i < s.length(); i++){
			char c = s.charAt(i);
			switch(c){
				case 'L': t += 'U'; break;
				case 'l': t += 'u'; break;
				case 'R': break;
				case 'r': break;
				default : t += c;
			}	
		}
		return t;
	
	}
}

