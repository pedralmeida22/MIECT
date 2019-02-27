import java.util.*;


public class Classes_ex8_2 {
	static Scanner sc = new Scanner(System.in);
	static Ponto ponto = new Ponto();
	public static void main (String[] args) {
		Ponto pMaisDist = new Ponto();
		pMaisDist.x = 0;
		pMaisDist.y = 0;
		double distmax = 0, soma = 0;
		int count = 0;
		ponto.x = 1;
		ponto.y = 1;
		
		while(ponto.x != 0 && ponto.y != 0) {
			lerPonto(ponto);
			soma += distPonto(ponto);
			
			if(distPonto(ponto) > distmax) {
				pMaisDist.x = ponto.x; 
				pMaisDist.y = ponto.y;
				distmax = distPonto(ponto);
			}
				
			count++;
		}
		System.out.printf(" Soma das distancias dos %d pontos a origem foi de %.1f %n", count, soma);
		System.out.print(" O ponto mais distante da origem foi: ");
		printPonto(pMaisDist);
		
	}
	public static Ponto lerPonto(Ponto ponto) {
		System.out.print("Coordenada x: ");
		ponto.x = sc.nextDouble();
		System.out.print("Coordenada y: ");
		ponto.y = sc.nextDouble();
		return ponto;
	}
	public static void printPonto(Ponto ponto) {
		System.out.printf("%.1f,%.1f", ponto.x, ponto.y);
	}
	public static double distPonto(Ponto ponto) {
		double dist;
		double a = (ponto.x * ponto.x);
        double b = (ponto.y * ponto.y);
        double c = Math.sqrt(a+b);
        dist = Math.abs(c);
        
        return dist;
	}
}
class Ponto {
	double x, y;
}

