import static java.lang.System.*;

public class MDC {
	
	public static void main (String[] args) {
		int a, b;
		a = Integer.parseInt(args[0]);
		b = Integer.parseInt(args[1]);
		
		assert a >= 0 : "Numero negativo";
		assert b >= 0 : "Numero negativo";
		
		out.println(mdc(a, b));
	}
	public static int mdc(int a, int b){
		if(b == 0){
			return a;
		}else{
			return mdc(b, (int)(a%b));
		}
	}
}

