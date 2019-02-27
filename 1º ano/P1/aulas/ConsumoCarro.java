import java.util.*;

public class ConsumoCarro {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		double km, litros;
		System.out.print("Quantos km fez?\n");
		km = sc.nextDouble();
		System.out.print("Com quantos litros?\n");
		litros = sc.nextDouble();
		
		System.out.printf(" O seu veiculo gasta %2.2f litros por cada 100km", media(km, litros));
	}
	
	public static double media(double km, double litros) {
		double media = (100 * litros) / km;
		return media;
	}
}

