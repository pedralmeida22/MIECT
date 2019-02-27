import java.util.*;


public class AltoBaixo {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int secret =  (int)(100.0*Math.random()) + 1; 
		int x;
		int cont=0;
		
		while(true){
			do{
				System.out.print(" Introduza um numero entre 1 e 100: \n");
				x = sc.nextInt();
			
				if (x < secret) 
					System.out.print(" Numero baixo\n");
				else if (x > secret)
					System.out.print(" Numero alto\n");
		
				cont++;
			} while (x != secret);
		System.out.printf(" Acertou!!\n Precisou de %d tentativas",cont);
		
		System.out.print(" Novo jogo (s/n): ");
		 String resp = sc.next(); 
		 if (resp.equals("n")){
			System.exit(0);
		} else
			secret = (int)(100.0*Math.random()) + 1;
			cont=0;
		}
	}
}

