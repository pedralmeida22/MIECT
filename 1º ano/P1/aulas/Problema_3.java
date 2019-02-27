import java.util.*;
import java.io.*;


public class Problema_3 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		Robo[] array = new Robo[0];
		int select;
		int winner;
		
		do{
			System.out.print("\n(1) - Adicionar informacao relativa a um robo\n" +
							"(2) - Imprimir informacao dos robos em prova\n" + 
							"(3) - Vencedor da prova e tempos medios de prova \n" +
							"(4) - Media do numero de elementos por equipa\n" +
							"(5) - Mostrar o nome dos robos em maiusculas \n" + 
							"(6) - Alterar informacao de um robo\n" +
							"(7) - Remover robos da competição \n" + 
							"(8) - Gravar informacao da prova num ficheiro\n" +
							"(9) - Terminar programa\n" +
							"-->");
			do{				
				select = sc.nextInt();
			}while(select < 1 || select > 10);
				sc.nextLine();
			
				switch(select){
					case 1: array = entrarRobo(array); break;
					case 2: imprimir(array); break;
					case 3: vencedor(array);break;
					case 4: mediaTeam(array); break;
					case 5: ordemAlfabetica(array); break;
					case 6: altRobo(array); break;
					case 7: array = removeRobos(array); break;
					case 8: guardarNumFicheiro(array); break;
					case 9: System.exit(0); break;
				}
			}while(true);
	}
	public static Robo[] entrarRobo(Robo[] array){
		Robo[] array2 = new Robo[array.length + 1];
		System.out.println("\nNome do Robo: ");
		String nome = sc.nextLine();
		System.out.println("\nTempo da prova (em segundos): ");
		int t = sc.nextInt();
		System.out.println("\nNumero de elementos da equipa: ");
		int nElem = sc.nextInt();
		//System.arraycopy(array,0,array2,0,array.lenght);
		for(int i = 0; i < array.length; i++){
			array2[i] = array[i];
		}
		
		array2[array.length] = new Robo(nome, t, nElem); 
		
		return array2;
	}
	public static void imprimir(Robo[] array){
		for(int i = 0; i < array.length; i++){
			System.out.printf("Nome do Robo: %s | Tempo de prova: %2d | Numero de elementos da equipa: %2d \n", array[i].nome, array[i].raceTime, array[i].nTeam);
		}
	}
	public static void vencedor(Robo[] array){
		int min = array[0].raceTime;
		int winner = 0;
		for(int i = 0; i < array.length; i++){
			if(array[i].raceTime < min){
				min = array[i].raceTime;
				winner = i;
			}
		}
		System.out.print("Vencedor da prova: \n");
		System.out.printf("Nome do Robo: %s | Tempo de prova: %2d | Numero de elementos da equipa: %2d \n", array[winner].nome, array[winner].raceTime, array[winner].nTeam);
		
		double tTime = 0;
		for(int i = 0; i < array.length; i++){
			tTime = tTime + array[i].raceTime;
		}
		System.out.printf("\nTempo medio de prova: %.2f%n", tTime/array.length);
	}
	public static void mediaTeam(Robo[] array) {
		double tElem = 0;
		for(int i = 0; i < array.length; i++){
			tElem = tElem + array[i].nTeam;
		}
		System.out.printf("\n A media de elementos por equipa e de %.2f%n", tElem/array.length);
	}
	public static void ordemAlfabetica(Robo[] array){
		boolean trocas;
		do{
			trocas = false;
			for(int i = 0; i < array.length - 1; i++){
				if(array[i].nome.compareTo(array[i+1].nome) > 0){
					Robo temporario = array[i+1];
					array[i+1] = array[i];
					array[i] = temporario;
					trocas = true;
				}
			}
		}while(trocas);
		
		//~ for(int i = 0; i < array.length; i++){
			//~ for(int j = i+1; j < array.length; j++){
				//~ if(array[i].nome.compareTo(array[i+1].nome) > 0){
					//~ Robo temporario = array[j];
					//~ array[j] = array[i];
					//~ array[i] = temporario;
			//~ }
		
		//~ }
		
		for(int i = 0; i < array.length; i++){
			System.out.printf("Nome do Robo: %s | Tempo de prova: %2d | Numero de elementos da equipa: %2d \n", array[i].nome.toUpperCase(), array[i].raceTime, array[i].nTeam);
		}
	}
	public static void altRobo(Robo[] array) {
		String name;
		int raceTime, nTeam; 
		boolean alterar = false;
		
		System.out.print("Insira o nome do robo que pretende alterar: ");
		String nome = sc.nextLine();
		
		for(int i = 0; i < array.length; i++){
			if(array[i].nome.equals(nome)){
				System.out.print("Novo nome: ");
				name = sc.nextLine();
				System.out.print("Novo tempo de prova: ");
				raceTime = sc.nextInt();
				System.out.print("Novo numero de elmentos: ");
				nTeam = sc.nextInt();
				array[i] = new Robo(name, raceTime, nTeam);
				alterar = true;
				break;
			}
		}
		if(alterar = false){
			System.out.print("Nome invalido! Robo nao existe!");
		}
	}
	public static Robo[] removeRobos(Robo[] array){
		System.out.println("Insira tempo maximo de prova (em segundos): ");
		int timeMax = sc.nextInt();
		sc.nextLine();
		int countNull = 0;
		
		for(int i = 0; i < array.length; i++){
			if(array[i].raceTime > timeMax){
				array[i] = null;
				countNull++;
			} 
		}
		
		Robo[] array2 = new Robo[array.length - countNull];
		int k = 0;
		for(int i = 0; i < array.length; i++){
			if(array[i] != null){
				array2[k] = array[i];
				k++;
			}
		}
		return array2;
	}
	public static void guardarNumFicheiro(Robo[] array)throws IOException {
		System.out.println("Insira nome do ficheiro onde pretende guardar as informacoes sofre os robos em prova: ");
		String fileName = sc.nextLine();
		
		File file = new File(fileName);
		PrintWriter pw = new PrintWriter(file);
		
		for(int i = 0; i < array.length; i++){
			pw.printf("\n Nome do Robo: %s | Tempo de prova: %2d | Numero de elementos da equipa: %2d \n\n", array[i].nome.toUpperCase(), array[i].raceTime, array[i].nTeam);;
				
		}
		pw.close(); 
	}
	
}
class Robo {
	String nome;
	int raceTime;
	int nTeam;
	
	public Robo(String nome, int raceTime, int nTeam){
		this.nome = nome;
		this.raceTime = raceTime;
		this.nTeam = nTeam;
	}
}
