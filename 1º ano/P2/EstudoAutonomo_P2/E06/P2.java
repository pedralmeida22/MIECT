import static java.lang.System.*;

public class P2{
	public static void main(String[] args){
		assert args.length > 0 : "Nao ha argumentos!!";
		for(int i = 0; i < args.length; i++){
			out.printf("%s contains %d pairs of consecutive equal charaters", args[i], countPairs(args[i], 0));
		}
	}
	public static int countPairs(String str, int pos){
		if(pos == str.length()-1) return 0;
		if(str.charAt(pos) == str.charAt(pos+1)) 
			return 1 + countPairs(str, pos+1);
		else 
			return countPairs(str, pos+1);
	}
}

