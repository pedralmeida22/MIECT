import java.util.*;


public class Asteriscos {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int largura;
		int comprimento;
		
		System.out.print(" Largura: ");
		largura = sc.nextInt();
		System.out.print(" Comprimento: ");
		comprimento = sc.nextInt();
		
		if(largura>0 && comprimento>0) {
			for(int i=0; i<largura; i++){
				for(int j=0; j<comprimento; j++)
					System.out.print("*");
			System.out.println();
		}
	} else{
		System.out.print(" Insira numeros positivos!");
	}
	}
}

