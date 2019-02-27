import java.util.*;


public class Exer1_4_2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String s = null;
		
		do{
			System.out.println("Linha: ");
			s = sc.nextLine();
			
			s = s.replaceAll("r", "");
			s = s.replaceAll("R", "");
			s = s.replaceAll("l", "u");
			s = s.replaceAll("L", "U");
			
			System.out.println(s);
			
		}while(s.length() != 0);
	}
}

