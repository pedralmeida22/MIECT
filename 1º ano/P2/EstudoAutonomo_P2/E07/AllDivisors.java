import static java.lang.System.*;

public class AllDivisors{
	
	public static void main(String[] args){
		assert args.length > 0 : "Sem argumentos!!";
		String padding = "";
		for (int i = 0; i < 1; i++){
				divisores(Integer.parseInt(args[0]), "");
		}
		
	}
	public static void divisores(int n, String padding){
		out.print(padding);
		out.println(n);
		for (int i = n/2; i > 2; i--){
			if(n % i == 0){
				divisores(i, "   " + padding);
			}
		}
		
	}

}

