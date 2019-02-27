import static java.lang.System.*;

public class P3 {

	public static void main(String[] args) {
		assert args.length > 0 : "Sem argumentos!";
		assert args.length % 2 == 0 : "Numero de elementos incorretos!";
		for (int i = 0; i < args.length; i=i+2){
			out.printf("%s is prefixed by %s -> %b\n", args[i], args[i+1], isPrefix(args[i], args[i+1]));
		}		
	}
	public static boolean isPrefix(String word, String pre){
		String sub = word.substring(0, pre.length());
		if(sub.equals(pre)){
			return true;
		}
		return false;
	}
}

