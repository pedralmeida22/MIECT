import java.util.*;


public class aula02Ex3 {
	
	public static void main (String[] args) {
		Scanner time = new Scanner(System.in);
		
		int horas, minutos, segundos;
		
		System.out.println("Segundos");
		segundos = time.nextInt();
		
	    minutos = (int)(segundos/60);
		segundos = segundos%60;
		
	    horas = (int)(minutos/60);
		minutos = minutos%60;
		
		
		
		System.out.printf("%2d:%2d:%2d", horas, minutos, segundos);
		
		
		
	}
}

