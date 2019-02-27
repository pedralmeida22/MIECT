package aula1;

import java.util.*;

public class ex2 {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {	
		Stack<Double> stack = new Stack<>();
		
		System.out.println("Introduza uma expressao: ");
		String[] exp = sc.nextLine().split(" ");
		
		double result = 0;
		
		for(String s : exp) {
			try {
				double num = Double.parseDouble(s);
				stack.push(num); 
			}catch(Exception e) {
				switch(s) {
				case "+": result = stack.pop() + stack.pop(); 
						break;
				case "-": 
					double rotate = stack.pop();
					result = stack.pop() - rotate; 
					break;
				case "*": result = stack.pop() * stack.pop(); 
					break;
				case "/": 
					double rotate2 = stack.pop();
					result = stack.pop() / rotate2; 
					break;
				default: System.err.println("Operador invalido!");
				}
				stack.push(result);
			}
			System.out.println(stack.toString());
		}
		
		System.out.println("Resultado: " + result);
	}

}
