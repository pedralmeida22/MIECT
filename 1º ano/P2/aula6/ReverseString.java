import static java.lang.System.*;

public class ReverseString {
	
	public static void main (String[] args) {
		String inv;
		
		assert args.length > 0;
		for(int i = 0; i < args.length; i++){
			inv = reverse(args[i]);
			out.println(inv);
		}
	}
	public static String reverse(String inv){
		if(inv.length() > 1){
			return reverse(inv.substring(1)) + inv.charAt(0);
		}
		return inv;
	}
}

