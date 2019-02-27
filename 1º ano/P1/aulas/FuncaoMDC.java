import java.util.*;


public class FuncaoMDC {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int x, y;
		System.out.print(" Insira um numero: ");
		x = sc.nextInt();
		System.out.print(" Insira outro numero: ");
		y = sc.nextInt();
		
		System.out.printf(" O maior divisor comum e %d", mdc(x,y));
		
	}
	public static int mdc(int x,int y) {
		do{
			if(x>y) {
				x = x - y;
			}else {
				y = y - x;
			}
		}while (x!=y);
	return x;
	}
	
}
	




