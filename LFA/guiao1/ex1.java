import java.util.*;

public class ex1 {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		
		String exp = "";
		
		while(!valid(exp)) {
			System.out.println("Introduza uma expressao: ");
			exp = sc.nextLine();
		}
		
		String[] split = exp.split(" ");
		
		double x = Double.parseDouble(split[0]);
		double y = Double.parseDouble(split[2]);
		String oper = split[1];
		
		switch(oper) {
		case "+" : System.out.println(x + y); break;
		case "-" : System.out.println(x - y); break;
		case "*" : System.out.println(x * y); break;
		case "/" : System.out.println(x / y); break;
		default: System.err.println("Operando invalido!");
		}
		
	}
	
	public static boolean valid(String exp) {
		String[] split = exp.split(" ");
		if(split.length != 3) {
			return false;
		}
		return true;
	}

}