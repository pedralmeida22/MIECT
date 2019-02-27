import java.util.*;
import java.io.*;

public class Ficheiros_ex7_3 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		int[] list = null;
		int opcao;
		
		while(true){
			System.out.println("(1) - Escrever sequencia \n(2) - Ler a sequencia \n(3) - Calcular maximo da sequencia \n(4) - Calcular o minimo da sequencia"
			+ " \n(5) - Calcular a media da sequencia \n(6) - Detetar se e uma sequencia so constituida por numeros pares \n(7) - Ler sequencia de um ficheiro"
			+ "\n(8) - Adicionar numeros a lista do ficheiro \n(9) - Terminar o programa ");
			opcao = sc.nextInt();
		
			switch(opcao){
				case 1 : System.out.println("Introduza a sequencia");
						 list = inSequence(); break;
				case 2 : displayList(list); break;
				case 3 : System.out.println(" O numero mais alto da lista e " + max(list));   break;
				case 4 : System.out.println(" O numero mais baixo da lista e " + min(list));  break;
				case 5 : System.out.println(" A media da lista e " + media(list) );           break;
				case 6 : System.out.println(" A lista e constituida apenas por numeros pares: " + pares(list)); break;
				case 7 : lerFicheiro(); break;
				case 8 : addToFile(); break;
				case 9 : System.exit(0);
			}
		} 
}
	public static int[] inSequence(){
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
	public static void displayList(int[] list) {
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
	public static void lerFicheiro() throws IOException {
			File cool = new File("FicheiroLista.txt");
			Scanner file = new Scanner(cool); //ler do ficheiro
		
		while(file.hasNextLine()){		
			System.out.println(file.nextLine());
		}
		file.close();
	}
	public static void addToFile() throws IOException {
		int[] addlist = new int[10];
		int x;
		
		File cool = new File("FicheiroLista.txt");
		FileWriter fw = new FileWriter(cool, true);
		PrintWriter write = new PrintWriter(fw);
		
		System.out.println("Insira a lista de numeros para acrescentar ao ficheiro.");
		for(int i = 0; i < addlist.length; i++) {
			System.out.print("Valor: ");
			x = sc.nextInt();
			if(x==0) break;
			addlist[i] = x;
		}
		for(int i: addlist){
			if(i != 0){
			write.println(i);
			}
		}
		
		fw.close();
		write.close();
	}
}	


