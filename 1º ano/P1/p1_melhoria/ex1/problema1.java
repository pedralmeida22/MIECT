import java.util.*;
import java.io.*;

public class problema1 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		
		int[] temp = new int[31];
		int[] hum = new int[31];
		
		int op = 0;
		
		while(op != 9){
		
			println("\n\nEstacao meteorologica");
			println("1 - ler ficheiro");
			println("2 - acrescentar medida");
			println("3 - listar valores da temperatura e humidade");
			println("4 - listar medidas ordenadas por valor de temperatura");
			println("5 - listar medidas ordenadas por valor de humidade");
			println("6 - calcular valores medios de temperatura e humidade");
			println("7 - calcular valores maximos e minimos de temperatura e humidade");
			println("8 - calcular histograma das temperaturas e humidade");
			println("9 - terminar programa");
			print("opcao -> ");
			
			op = sc.nextInt();
			
			switch(op){
				case 1 : readFile(temp, hum); break;
				
				case 2 : addValue(temp, hum); break;
				
				case 3 : printValues(temp, hum); break;
				
				case 4 : sortTemp(temp); 
						 printValues(temp, hum); break;
						 
				case 5 : sortHum(hum); 
					     printValues(temp, hum); break;   
				
				case 6 : println("Temperatura media: " + average(temp)); 
						 println("Humidade media: " + average(hum));
						 break;
				
				case 7 : println("Temperatura maxima: " + findMax(temp));
						 println("Humidade maxima: " + findMax(hum));
						 println("Temperatura minima: " + findMin(temp));
						 println("Humidade minima: " + findMin(hum));
						 break;
				
				case 8 : histoTemp(temp);
						 histoHum(hum); break;
						 
				case 9 : System.exit(0);
				default: println("Numero invalido!");
			}
		}
	}
	
	public static void readFile(int[] temp, int[] hum) throws IOException {
		/*println("Nome do ficheiro: ");
		String filename = sc.next();
		
		File file = new File(filename);
		*/
		File file = new File("meteo.txt");
		Scanner scf = new Scanner(file);
		
		int i = 0;
		while(scf.hasNextLine()){
			String line = scf.nextLine();
			String[] split = line.split("\t");
			temp[i] = Integer.parseInt(split[0]);
			hum[i] = Integer.parseInt(split[1]);
			
			i++;
		}		
		scf.close();
		
		println("Ficheiro lido com sucesso!");
	}
	
	public static void printValues(int[] temp, int[] hum) {
		println("Temperatura | Humidade");
		for(int i = 0; i < temp.length; i++){
			if(temp[i] != 0){
				System.out.printf("%6d       | %5d\n", temp[i], hum[i]);
			}
		}
	}
	
	public static void addValue(int[] temp, int[] hum) {
		println("*INSERIR MEDIDA*\n");
		int t = -11;
		do{
			println("Valor da temperatura: ");
			t = sc.nextInt();
		}while(!validTemp(t));
		
		int h = -1;
		do{
			println("Valor da humidade: ");
			h = sc.nextInt();
		}while(!validHum(h));
		
		boolean writeT = false;
		boolean writeH = false;
		
		for (int i = 0; i < temp.length; i++){
			if(temp[i] == 0){
				temp[i] = t;
				writeT = true;
				break;
			}
		}
		
		for (int i = 0; i < hum.length; i++){
			if(hum[i] == 0){
				hum[i] = h;
				writeH = true;
				break;
			}
		}
		
		if(writeT == true && writeH == true){
			println("Temp = " + t);
			println("Hum = " + h);
			println("Medida inserida com sucesso!");
		}else{
			println("Impossivel inserir nova medida!");
		}
		
	}
	
	public static void sortTemp(int[] t){ //ordem crescente
		boolean trocas;
		
		do{
			trocas = false;
			for (int i = 0; i < t.length - 1; i++){
				if(t[i] > t[i+1]){
					int aux = t[i];
					t[i] = t[i+1];
					t[i+1] = aux;
					trocas = true;
				}
			}
			
		}while(trocas);
	}
	
	public static void sortHum(int[] h){ //ordem decrescente
		boolean trocas;
		do{
			trocas = false;
			for(int i = 0; i < h.length - 1; i++){
				if (h[i] < h[i+1]){
					int aux = h[i];
					h[i] = h[i+1];
					h[i+1] = aux;
					trocas = true;
				}
			}
		}while(trocas);
	}
	
	public static int findMax(int[] array){
		int max = -15;
		
		for(int i = 0; i < array.length; i++){
			if(array[i] > max) max = array[i];
		}
		
		return max;
	}
	
	public static int findMin(int[] array){
		int min = 100;
		
		for (int i = 0; i < array.length; i++){
			if(array[i] < min && array[i] != 0) min = array[i];
		}
		
		return min;
	}
	
	public static double average(int[] a){
		int soma = 0;
		for(int i = 0; i < a.length; i++){
			soma += a[i];
		}
		
		double media = soma / numElem(a);
		
		return media;
	}
	
	private static int numElem(int[] array) {
		int count = 0;
		for (int i = 0; i < array.length; i++){
			if(array[i] != 0){
				count++;
			}
		}
		return count;		
	}
	
	private static boolean validTemp(int t){
		return (t >= -10) && (t <= 40);
	}
	private static boolean validHum(int h){
		return (h >= 0) && (h <= 100);
	}
	
	public static void histoTemp(int[] t){
		int[] countT = countApears(t);
		
		println("Histograma da temperatura");
		println("-------------------------");
		
		for(int i = 0; i <= 40; i++){
			System.out.printf("%3d | ", i);
			
			int aux = countT[i];
			if(aux > 0){
				for(int j = 0; j < aux; j++){
					System.out.print("*");
				}
			}
			println("");
		}
	}
	
	public static void histoHum(int[] h){
		int[] countH = countApears(h);
		
		println("Histograma da humidade");
		println("----------------------");
		for(int i = 0; i < countH.length; i++){
			System.out.printf("%3d | ", i);
			int aux = countH[i];
			if(aux > 0){
				for(int j = 0; j < aux; j++){
					System.out.print("*");
				}
			}
			println("");
		}
	}
	
	private static int[] countApears(int[] array){
		int[] c = new int[100];
		
		for (int i = 0; i < array.length; i++){
			int temp = array[i];
			if(c[temp] > 0){
				c[temp]++;
			}
			else 
				c[temp] = 1;
		}
		return c;
	}
	
	public static void println(String s) {
		System.out.println(s);
	}
	public static void print(String s) {
		System.out.print(s);
	}
}

