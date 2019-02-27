import java.util.*;

public class ListaArrays {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int[] list = null;
		int opcao;
		
		while(true){
			System.out.printf("(1) - Escrever sequencia %n(2) - Ler sequencia %n(3) - Calcular maximo da sequencia %n(4) - Calcular o minimo da sequencia %n"
			+ "(5) - Calcular a media da sequencia %n(6) -  Detetar se e uma sequencia so constituida por numeros pares %n(7) - Terminar o programa ");
			opcao = sc.nextInt();
		
			switch(opcao){
				case 1 : System.out.println(" Insira uma lista de numeros");
						 list = escrever(); break;
				case 2 : ler(list); break;
				case 3 : System.out.println(" O numero mais alto da lista e " + max(list));   break;
				case 4 : System.out.println(" O numero mais baixo da lista e " + min(list));  break;
				case 5 : System.out.println(" A media da lista e " + media(list) );           break;
				case 6 : System.out.println(" A lista e constituida apenas por numeros pares: " + pares(list)); break;
				case 7 : System.exit(0);
			}
		} 
}
	public static int[] escrever(){
		int x;
		int[] list = new int[50];
		for(int i = 0; i < 50; i++) {
			System.out.print(" Valor: ");
			x = sc.nextInt();
			if(x == 0) break;
			list[i] = x;
		}
		return list;
	}
	public static void ler(int[] list) {
		for(int i: list) {
			System.out.println(i);
		}
	}
	public static int max(int[] list) {
		int max = list[0];
		for(int i = 0; i < 50; i++){
			if(list[i] == 0){
				break;
			}
			if(list[i] > max) max = list[i];
		}
		return max;
	}
	public static int min(int[] list) {
		int min = list[0];
		for(int i = 0; i < 50; i++){
			if(list[i] == 0){
				break;
			}
			if(list[i] < min) min = list[i];
		}
		return min;
	}
	public static double media(int[] list) {
		int soma = 0;
		for(int i = 0; i < list.length; i++){
			soma = soma + list[i];
		}
		return soma/list.length;
		
	}
	public static boolean pares(int[] list) {
		for(int i = 0; i < list.length; i++) {
			if(list[i] % 2 != 0) return false;
		}
		return true;
	}			 
}

