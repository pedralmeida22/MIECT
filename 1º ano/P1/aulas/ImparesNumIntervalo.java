import java.util.*;

public class ImparesNumIntervalo {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int a, b;
		
		System.out.print(" A: ");
		a = sc.nextInt();
		System.out.print(" B: ");
		b = sc.nextInt();
		
		if(b<a){
			for(int i=b; i<=a; i++){
				if(i % 2 != 0)
				System.out.println( i);
			}
			} else {
				for(int i=a; i<=b; i++) {
					if(i % 2 != 0)
					System.out.println( i);
				}
			} 
	}
}

