
import java.util.*;

public class FuncaoAnoBissexto {
	
	static Scanner sc = new Scanner(System.in);
	
	public static boolean b(int year){
		if(((year %4 == 0)&&!(year%100==0)) || (year% 400==0))
		return true;
		else return false;
	}
	
	public static void main (String[] args) {
		
		int month, year;
		
		System.out.print( "Mes: ");
		month = sc.nextInt();
		System.out.print( "Ano: ");
		year = sc.nextInt();
		
		System.out.printf("O mes tem %2d dias.",days(month, year));
	}
	
	public static int days (int month, int year) {
		
		switch(month)
		{
		case 2:
		if( b(year)) return 29;
		else return 28;
		
		
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:
		return 31;
		
		
		case 4: case 6: case 9: case 11:
		return 30;
		

		default:
		return 0;
	}
	
		
	
}
}



