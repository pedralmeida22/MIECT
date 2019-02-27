import java.util.*;


public class Asteriscos2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int largura, comprimento;
		
		System.out.print(" Largura: ");
		largura = sc.nextInt();
		System.out.print(" Comprimento: ");
		comprimento = sc.nextInt();
		
		if( largura>0 && comprimento>0){
			for(int i = 0; i < comprimento; i++){
				System.out.print("*");
			}
			System.out.println();
			for(int i = 0; i < largura - 2; i ++){
				System.out.print("*");
				for(int x = 0; x < comprimento - 2; x++){
					System.out.print(" ");
				}
				System.out.println("*");
			}
			for(int i = 0; i < comprimento; i++){
				System.out.print("*");
			}
			
		}else {
		System.out.print(" Insira numeros positivos!");
		}
	
	}
	
}

