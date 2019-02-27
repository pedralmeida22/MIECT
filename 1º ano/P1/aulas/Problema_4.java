import java.util.*;
import java.io.*;

public class Problema_4 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		int select;
		Aluno[] array = null;
		
		do{
			System.out.print("\n(1) - Ler ficheiro com numeros mec. e pedir informacao de notas\n" +
							"(2) - Imprimir no terminal a informacao da disciplina\n" + 
							"(3) - Calcular estatisticas das notas finais  \n" +
							"(4) - Alterar as notas de um aluno \n" +
							"(5) - Imprimir um histograma de notas  \n" + 
							"(6) - Gravar num ficheiro a informacao da disciplina (ordenada) \n" +
							"(7) - Terminar programa \n" + 
							"-->");
			do{
				select = sc.nextInt();
				sc.nextLine();
			}while(select < 1 || select > 7);
			
			switch(select){
				case 1: array = getValores(array); break;
				case 2: tabela(array); break;
				case 3: mediaNotaFinal(array); 
						melhorAluno(array);
						aprovar(array); break;
				case 4: altAluno(array); break;
				case 6: ordenarAlunosAprovados(array);
						escreverFicheiro(array); break;
				case 5: graficoNotas(array); break;
				case 7: System.exit(0); break;
			}
		}while(true);
	}
	public static Aluno[] getValores(Aluno[] array) throws IOException {
		int countLinhas = 0;
		int normal, recurso, notaFinal;
		
		System.out.println("Insira nome do ficheiro: ");
		String fileName = sc.nextLine();
		
		File file = new File(fileName);
		Scanner fsc = new Scanner(file);
		
		while(fsc.hasNextInt()){
			countLinhas++;
			fsc.nextLine();
			
		}
		array = new Aluno[countLinhas];
		
		fsc = new Scanner(file);
		
		for(int i = 0; i < countLinhas; i++){
			int nMec = fsc.nextInt();
			fsc.nextLine();
			do{
				System.out.print("Nota normal aluno: ");
				normal = sc.nextInt();
			}while(normal < 0 || normal > 20 && normal != 77);
			do{
				System.out.print("Nota recurso aluno: ");
				recurso = sc.nextInt();
			}while(recurso < 0 || recurso > 20 && recurso != 77);
			notaFinal = calcNotaFinal(normal, recurso);
			array[i] = new Aluno(nMec, normal, recurso, notaFinal);
		}
		return array;

	}
	public static int calcNotaFinal(int normal, int recurso){
		if(normal != 77 && ( recurso == 77 || normal >= recurso)){
			return normal;
		}else if(recurso != 77 && ( normal == 77 || recurso > normal)){
			return recurso;
		}else if(normal == 77 && recurso == 77){
			return 77;
		}
		
		return 77;
	}
	public static void tabela(Aluno[] array){
		System.out.print("Pauta de uma disciplina\n");
		System.out.print("-----------------------\n");
		for(int i = 0; i < array.length; i++){
			System.out.printf("| %5d | %2d | %2d | %2d |\n", array[i].nMec, array[i].normal, array[i].recurso, array[i].notaFinal);
		}
		System.out.print("-----------------------");
	}
	public static void mediaNotaFinal(Aluno[] array){
		int totalNotaFinal = 0; 
		int numNotasFinais = 0;
		for(int i = 0; i < array.length; i++){
			if(array[i].notaFinal != 77){
				totalNotaFinal = totalNotaFinal + array[i].notaFinal;
				numNotasFinais++;
			}	
		}
		System.out.printf(" A media das notas finais e de: %d \n", totalNotaFinal/numNotasFinais);
	}
	public static void melhorAluno(Aluno[] array) {
		int notaMaisAlta = array[0].notaFinal;
		int ma = 0;
		for(int i = 0; i < array.length; i++){
			if(array[i].notaFinal > notaMaisAlta){
				notaMaisAlta = array[i].notaFinal;
				ma = i;
			}
		}
		System.out.println("Melhor aluno: ");
		System.out.printf(" Numero Mecanografico: %5d | Nota Normal: %2d | Nota Recurso: %2d | Nota Final: %2d", array[ma].nMec, array[ma].normal, array[ma].recurso, array[ma].notaFinal);
	}
	public static void aprovar(Aluno[] array){
		int alAproved = 0;
		for(int i = 0; i < array.length; i++){
			if(array[i].notaFinal >= 10){
				alAproved++;
			}
		}
		System.out.printf("\nO numero de alunos aprovados e: %d", alAproved);
	}
	public static void altAluno(Aluno[] array){
		System.out.println("Insira o numero mecanografico do aluno que pretende alterar as notas: ");
		int nMec = sc.nextInt(), normal, recurso, notaFinal;
		boolean alterar = false;
		
		for(int i = 0; i < array.length; i++){
			if(nMec == array[i].nMec){
				System.out.println("Nova nota normal: ");
				normal = sc.nextInt();
				System.out.println("Nova nota recurso: ");
				recurso = sc.nextInt();
				notaFinal = calcNotaFinal(normal, recurso);
				array[i] = new Aluno(nMec, normal, recurso, notaFinal);
				alterar = true;
				break;
			}
		}
		if(alterar = false){
			System.out.println("AVISO: Aluno nao encontrado!");
		}
	}
	public static void graficoNotas(Aluno[] array){
		int[] notas = arrayNotas(array);
		
		System.out.print("----------------------");
		System.out.println("\n| Histograma de notas |");
		System.out.print("----------------------");
		for(int i = 0; i < notas.length; i++){
			System.out.printf("\n| %2d | ", i);
			for(int j = 0; j < notas[i]; j++){
				System.out.print("*");
			}
		}
		System.out.println("\n---------------------");
		
	}
	public static int[] arrayNotas(Aluno[] array){
		int[] notas = new int[21];
		for(int i = 0; i < array.length; i++){
			notas[array[i].notaFinal]++;
		}
		return notas;
	}
	public static void ordenarAlunosAprovados(Aluno[] array){
		boolean trocas;
		do{
			trocas = false;
			for(int i = 0; i < array.length - 1; i++){
				if(array[i].notaFinal < array[i+1].notaFinal){
					Aluno temp = array[i+1];
					array[i+1] = array[i];
					array[i] = temp;
					trocas = true;
				} 
			}
		}while(trocas);
	}
	public static void escreverFicheiro(Aluno[] array) throws IOException {
		System.out.println("Insira o nome do ficheiro para guardar alunos aprovados: ");
		String fileName = sc.nextLine();
		
		File file = new File(fileName);
		PrintWriter pw = new PrintWriter(file);
		
		for(int i = 0; i < array.length; i++){
			if(array[i].notaFinal != 77 && array[i].notaFinal > 9){
				pw.printf("| %5d | %2d | %2d | %2d |%n", array[i].nMec, array[i].normal, array[i].recurso, array[i].notaFinal);
			}
		}
		
		pw.close();
		
	}
}
class Aluno {
	int nMec, normal, recurso, notaFinal;

	
	Aluno(int nM, int n, int r, int nf){
		nMec = nM;
		normal = n;
		recurso = r;
		notaFinal = nf;
	}
}

