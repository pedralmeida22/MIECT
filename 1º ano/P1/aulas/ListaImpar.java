import java.util.*;


public class ListaImpar {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		boolean impares = true;
		
		while(true){
			int x = sc.nextInt();
			if(x==0){
				break;
			} else if (x%2==0){
				impares = false;
			}
			
			if(impares){
			System.out.println(" A lista e exclusivamente constituida por numeros impares");
		}else{
			 System.out.println(" A lista nao e exclusivamente constituida por numeros impares");
		 }
	
		}
	}
}

			
		
