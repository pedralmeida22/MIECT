import java.util.*;


public class Exer1_1 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		double num1, num2, res = 0;
		String op;
		
		System.out.println("Operacao: ");
		num1 = sc.nextDouble();
		op = sc.next();
		num2 = sc.nextDouble();
		
		if(op.equals("+")){
			res = num1 + num2;
		}
		else if(op.equals("-")){
			res = num1 - num2;
		}
		else if(op.equals("*")){
			res = num1 * num2;
		}
		else if(op.equals("/")){
			res = num1 / num2;
		}
		else{
			System.err.print("ERRO: Operacao Invalida");
		}
		System.out.printf("Resultado: %.2f", res);
	}
	
}

