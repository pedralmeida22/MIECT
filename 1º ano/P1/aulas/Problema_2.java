import java.util.*;
import java.io.*;


public class Problema_2 {
	static Scanner sc = new Scanner(System.in);
	static int count = 0;
	public static void main (String[] args) {
		Piloto[] array = new Piloto[10];
		int select;
		
		do{
			System.out.print(	"(1) - Inserir informacao dos pilotos\n" +
							"(2) - Listar pilotos ordenados pelo numero da viatura\n" + 
							"(3) - Alterar informacao de um piloto\n" +
							"(4) - Remover piloto com base no numero da viatura\n" +
							"(5) - Listar pilotos ordenados pelo nome\n" + 
							"(6) - Remover piloto(s) com base no nome\n" +
							"(7) - Validar matriculas\n" + 
							"(8) - Terminar programa\n" +
							"-->");
			select = sc.nextInt();
			sc.nextLine();
			switch(select){
				case 1: criarPilotos(array); break;
				case 2: ordenarNViatura(array); break;
				case 3: altPiloto(array); break;
				case 4: removePiloto(array); break;
				case 5: ordemAlfabetica(array); break;
				case 6: removePilotoNome(array); break;
				case 7: ; break;
				case 8: System.exit(0); break;
			}
		}while(true);
		
		
	}
	public static void criarPilotos(Piloto[] array) {
		String nome;
		String matricula;
		int nViatura;
		for(int i = 0; i < 10; i++){
			System.out.println("\nNome do piloto: ");
			nome = sc.nextLine();
			if(nome.equals("")) break;
			System.out.println("Matricula: ");
			matricula = sc.nextLine();
			nViatura = i + 1;
			array[i] = new Piloto(nome, matricula, nViatura);
			count++;
		}
	}
	public static void ordenarNViatura(Piloto[] array) {
		Piloto[] array2 = new Piloto[count];
		for(int i = 0; i < count; i++){
			array2[i] = array[i];
		}
		boolean trocas;
		do{
			trocas =  false;
			for(int i = 0; i < count-1; i++) {
				if(array2[i].nViatura < array2[i + 1].nViatura) {
					Piloto temporario = array2[i];
					array2[i] = array2[i+1];
					array2[i+1] = temporario;
					trocas = true; 
				}
			}
		}while(trocas);
		imprimir(array2);
		
	}
	public static void imprimir(Piloto[] array) {
		System.out.println();
		for(int i = 0; i < count; i++) { 
			if(!array[i].desclassificado) {
			System.out.printf("Piloto: %s | Matricula: %s | Numero da viatura: %d\n", array[i].nome, array[i].matricula, array[i].nViatura);
		}else{
			System.out.printf("Piloto %d Desclassificado!\n", array[i].nViatura);
		}
		}System.out.println();
	}
	public static void altPiloto (Piloto[] array) {
		int num;
		String nome;
		String matricula;
		
		do{
			System.out.println("Numero da viatura do piloto que pretende alterar: ");
			num = sc.nextInt();
		}while(num < 0 || num > count);
		
		sc.nextLine(); //limpar scanner
			
		System.out.println("Novo nome: ");
		nome = sc.nextLine();
		System.out.println("Nova matricula: ");
		matricula = sc.nextLine();
		
		array[num - 1] = new Piloto(nome, matricula, num);
	}
	public static void removePiloto (Piloto[] array) {
		int num;
		System.out.println("Numero da viatura do piloto que quer remover: ");
		num = sc.nextInt();
		
		array[num - 1].desclassificado = true;
	}
	public static void ordemAlfabetica(Piloto[] array) {
		boolean trocas;
		do{
			trocas = false;
			for(int i = 0; i < count-1; i++) {
				if(array[i].nome.compareTo(array[i+1].nome) > 0){
					Piloto temporario = array[i];
					array[i] = array[i+1];
					array[i+1] = temporario;
					trocas = true; 
				}
			}
		}while(trocas);
		imprimir(array);
	}
	public static void removePilotoNome(Piloto[] array){
		String nome;
		System.out.print(" Insira o nome do piloto que quer desclassificar: ");
		nome = sc.nextLine();
		System.out.println("Encontrados: ");
		
		for(int i = 0; i < count; i++){
			if(array[i].nome.indexOf(nome) != -1){
				System.out.println(array[i].nome + ", viatura numeros: " + array[i].nViatura);
			}
		}
		
		System.out.print("\nIndique os numeros da viatura dos pilotos que quer desclassificar, separados por espacos: ");
		String[] input = sc.nextLine().split(" ");
	
		for(int i = 0; i < input.length; i++){
			int x = Integer.parseInt(input[i]);
			array[x - 1].desclassificado = true;
		}
		
	}	
}

class Piloto {
	String nome;
	String matricula;
	int nViatura;
	boolean desclassificado = false;
	
	public Piloto(String nome, String matricula, int nViatura){
		this.nome = nome;
		this.matricula = matricula;
		this.nViatura = nViatura;
	}
}
