import p2utils.Stack;
import p2utils.Queue;
import static java.lang.System.*;


public class palindromo {
	
	public static void main (String[] args) {
		if(args.length < 1){
			err.println("Sem argumentos!");
			exit(0);
		}
		Stack<Character> stack = new Stack<Character>();
		Queue<Character> queue = new Queue<Character>();
		
		for (int i = 0; i < args[0].length(); i++){
			Character c = args[0].charAt(i);
			if(Character.isLetter(c) || Character.isDigit(c)){
				stack.push(c);
				queue.in(c);
			}
		}
		int size = queue.size(); 
		for(int i = 0; i < size; i++){
			if(!queue.peek().equals(stack.top())) break;
			queue.out();
			stack.pop();
		}
		out.println("A frase e um palindromo: " + queue.isEmpty());		
	}
}

