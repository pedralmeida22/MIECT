import java.util.*;
 
public class Strings_ex9_4 {
    static Scanner kb = new Scanner(System.in);
    public static void main (String args[]) {
         String matricula, pattern; 
        System.out.print("Introduza uma matricula: ");
        matricula = kb.nextLine();
        System.out.print("Introduza um padrao: ");
        pattern = kb.nextLine();
         
        if(matchPattern(matricula, pattern) == true) {
            System.out.print("A matricula e valida!");
        } else {
            System.out.print("A matricula e invalida!");
        }
    }
    public static boolean matchPattern(String str, String pattern) {
        char letra1 = str.charAt(0);
        char letra2 = str.charAt(1);
        char letra3 = str.charAt(3);
        char letra4 = str.charAt(4);
        char letra5 = str.charAt(6);
        char letra6 = str.charAt(7);
         
        if(Character.isUpperCase(letra1) == true && pattern.charAt(0) == 'A') {
            return true;
        } else if(Character.isUpperCase(letra3) == true && pattern.charAt(3) == 'A') {
            return true;
        } else if(Character.isUpperCase(letra5) == true && pattern.charAt(6) == 'A') {
            return true;
        } else {return false;}          
    }
}

