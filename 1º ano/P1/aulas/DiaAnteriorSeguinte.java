import java.util.*;


public class DiaAnteriorSeguinte {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner(System.in);
		
		int mes, ano, dia;
		
		System.out.print("Ano:");
		ano = kb.nextInt();
		System.out.print("Mes:");
		mes = kb.nextInt();
		System.out.print("Dia:");
		dia = kb.nextInt();
		
		switch(mes)
		{
			case 1: case 3: case 5: case 7: case 8: case 10: case 12:
			System.out.printf("Mes %d tem 31 dias", mes);   break;
			
			case 4: case 6: case 9: case 11:
			System.out.printf("Mes %d tem 30 dias", mes);  break;
			
			case 2:
			if (((ano % 4==0)&&!(ano % 100==0)) ||(ano % 400==0))
			System.out.println(" O mes" + mes + " do ano" + ano + " tem 29 dias");
			else
			System.out.println(" O mes" + mes + " do ano" + ano + " tem 28 dias");
			break;
			default: System.out.println(" O mes" + mes + " nao existe");
		}
		System.out.print(" Dia anterior: " 
		Sistem.out.print(" Dia seguinte "
	}
}


