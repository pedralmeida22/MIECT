import java.util.*;


public class CelciusFahren {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner(System.in);
		
		double choice, temp, conversao;
		
		System.out.print(" Escreva uma temperatura: ");
		temp = kb.nextDouble();
		
		System.out.println(" Em que base foi a temperatura dada anteriormente: Celcius-0  ou Fahrenheit-1");
		choice = kb.nextDouble();
		
		if (choice == 0)
		{
		conversao = (1.8*temp+32);
		System.out.printf(" %f ºCelcius equivalem a %f ºFahrenheit", temp, conversao);
	}
		else if (choice == 1)
		{
		conversao = (temp-32)/1.8;
		System.out.printf(" %f ºFahrenheit equivalem a %f ºCelcius", temp, conversao);
	}
	}
}

