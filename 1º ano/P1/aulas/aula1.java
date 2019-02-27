

import java.util.*;
public class aula1
 {
	static Scanner maria = new Scanner(System.in);
	public static void main (String args[]) 
	{
		int ladoA, ladoB;
		System.out.print("Entar lado A");
		ladoA = maria.nextInt();
		
		System.out.print("Entar lado B");
		ladoB = maria.nextInt();
		
		
		System.out.printf("Area = %10d\n" , ladoA*ladoB);
		System.out.printf("P = %10d\n" , (ladoA+ladoB)*2);
		
		
	}
}
 
 
