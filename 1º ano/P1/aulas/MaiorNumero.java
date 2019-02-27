import java.util.*;


public class MaiorNumero {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner(System.in);
		
		int n1, n2, n3, local;
		
		System.out.print("Insira um numero1:");
		n1 = kb.nextInt();
		
		System.out.print("Insira outro numero2:");
		n2 = kb.nextInt();
		
		System.out.print("Insira outro numero3:");
		n3 = kb.nextInt();
		
		 if (n1 > n2) {
	       local = n1;
	   }
	     else {
	       local = n2;
	       if (local > n3)
	       System.out.printf(" O maior numero e: %d", local);
	       else
	       System.out.printf(" O maior numero e: %d", n3);
	   }
	       			                   
        
		if (n1==n2 && n2==n3)
		{
			System.out.print(" Os tres numeros sao iguais");
		}
		}
	
}

