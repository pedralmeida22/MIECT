import java.util.*;


public class MultiplicacaoRussa {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int x, y;
		int soma = 0;
		System.out.print(" Valor de X: ");
		x = sc.nextInt();
		System.out.print(" Valor de Y: ");
		y = sc.nextInt();
		
		while(x != 0){
			if(x % 2 != 0 ){
				soma = soma + y;
			}
			x = (int)x/2;
			y = y*2;
		}
				System.out.print("Resultado: " + soma);
			
		
	}
}

