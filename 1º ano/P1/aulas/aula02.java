
  import java.util.*;

public class aula02 {
	static Scanner cf = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		
		double celcius;
		System.out.println("Celcius");
		celcius = cf.nextDouble();
		
		System.out.printf("%5.2f ºCelcius é equivalente a %5.2f ºFahrenheit", celcius, celcius*1.8+32);
		
	}
}

