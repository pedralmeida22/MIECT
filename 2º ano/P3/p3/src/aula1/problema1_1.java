package aula1;
import java.util.Scanner;

public class problema1_1 {
    static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
        System.out.print("Escreva algo: ");
        String s = "pedro almeida 123";
        //String s = sc.nextLine();

        System.out.println("A frase tem " + countDigit(s) + " digitos.");
        System.out.println("So tem minusculas: " + lowerCase(s));
        System.out.println("So tem maiusculas: " + upperCase(s));
        nWords(s);
        System.out.println("Palavra alterada: " + changedWord(s));
        
    }

    public static int countDigit(String s){
        int count = 0;
        char c;
        for(int i = 0; i < s.length(); i++){
            c = s.charAt(i);
            if(Character.isDigit(c))
                count++;
        }
        return count;
    }
    public static boolean lowerCase(String s){
        boolean l = true;
        for(int i = 0; i < s.length(); i++){
            if(Character.isUpperCase(s.charAt(i)))
                l = false;
        }
        return l;
    }
    public static boolean upperCase(String s){
        boolean l = true;
        for(int i = 0; i < s.length(); i++){
            if(Character.isLowerCase(s.charAt(i)))
                l = false;
        }
        return l;
    }
    public static void nWords(String s){
        String[] ss = s.split(" ");
        int count = 0;
        for(String i : ss){
            System.out.println(i);
            count++;
        }
        System.out.printf("A frase tem %d palavras \n", count);
    }
    
    public static String changedWord(String s) {
    	String newStr = "";
    	for(int i = 0; i < s.length()-1; i += 2) {
    		newStr += Character.toString(s.charAt(i+1)) + Character.toString(s.charAt(i));
    	}
    	if(s.length() % 2 != 0) {
    		newStr += s.charAt(s.length()-1);
    	}
    	return newStr;
    }
    
}
