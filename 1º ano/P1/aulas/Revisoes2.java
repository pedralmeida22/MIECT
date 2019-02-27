

import java.util.Scanner;
public class Revisoes2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		
		int t, t8=0, t12=0, t16=0, t20=0;
		int max=0, min=300;
		for(int h=0; h<4; h++){
			t = gerarTensao();
			switch (h){
				case 0:
					t8=t;
					System.out.printf(" Tensao as 8h %d %n", t);
					break;
				case 1:
					t12=t;
					System.out.printf(" Tensao as 12h %d %n", t);
					break;
				case 2:
					t16=t;
					System.out.printf(" Tensao as 16h %d %n", t);
					break;
				case 3:
					t20=t;
					System.out.printf(" Tensao as 20h %d %n", t);
					break;
			}
			if (t>max)max=t;
		}
		imprimeTensoesIguais(max,t8,t12,t16,t20);
		//System.out.println(gerarTensao());
		
	}
	
	//imprimir horas com a mesma tensao (t)
	static void imprimeTensoesIguais(int t, int t1, int t2, int t3, int t4){
		if (t == t1)System.out.printf(" Tensao as 8h %d %n", t);
		if (t == t2)System.out.printf(" Tensao as 12h %d %n", t);
		if (t == t3)System.out.printf(" Tensao as 16h %d %n", t);
		if (t == t4)System.out.printf(" Tensao as 20h %d %n", t);
		
	}
	
	//gerar tensao
	static int gerarTensao() {
		int valor = (int)(Math.random()*(200-50+1))+50;
		return valor;
	}
}




