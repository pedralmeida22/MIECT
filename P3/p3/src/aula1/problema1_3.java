package aula1;

import java.util.*;

public class problema1_3 {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		
		while(true) {
			
			int opcao = 0;
			
			System.out.println("--------------------------");
			System.out.println("|  Figuras geometricas   |");
			System.out.println("--------------------------");
			System.out.println("|     (1) - Circulo      |");
			System.out.println("|     (2) - Quadrado     |");
			System.out.println("|     (3) - Retangulo    |");
			System.out.println("|     (4) - Sair         |");
			System.out.println("--------------------------");
			
			System.out.println("Operacao: ");
			try {
				opcao = sc.nextInt();
				sc.nextLine();
			}catch(NumberFormatException e) {
				System.err.println("Nao e um numero!");
			}
			
			if(opcao == 1) {
				System.out.println("Raio: ");
				double r = sc.nextDouble();
				System.out.println("Centro x: ");
				double x = sc.nextDouble();
				System.out.println("Centro y: ");
				double y = sc.nextDouble();
				
				Circulo circle = new Circulo(x, y, r);
				System.out.println(circle.toString());
				
			}else if(opcao == 2) {
				System.out.println("Lado: ");
				double l = sc.nextDouble();
				
				Quadrado square = new Quadrado(l);
				System.out.println(square.toString());
				
			}else if(opcao == 3) {
				System.out.println("Comprimento: ");
				double comp = sc.nextDouble();
				System.out.println("Largura: ");
				double lar = sc.nextDouble();
				
				Retangulo retang = new Retangulo(lar, comp);
				System.out.println(retang.toString());
				
			}else if(opcao == 4) {
				System.exit(0);
			}
		}
	}

}
