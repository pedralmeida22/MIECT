import java.util.*;


public class FuncaoTabuada {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int x;
		tracos(15);
		System.out.println();
		System.out.print("| Tabuada do:");
		x = sc.nextInt();
		tabuada(x);
		tracos(15);
	}
	public static void tabuada(int x) {
		for( int i = 0; i <= 10; i++) {
			if(i==10){
				System.out.printf("| %2d x %2d| %2d|\n", x,i, x*i);
			}else if(i<=2){
				System.out.printf("| %2d x 2%d | %2d |\n", x,i, x*i);
			}else {
				System.out.printf("| %2d x %2d | %2d|\n", x,i, x*i);
		}
	}
}
	public static void tracos(int n){
		for(int i = 0; i < n; i++){
			System.out.print("-");
		}
	}
	
}

