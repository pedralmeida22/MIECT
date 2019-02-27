import java.util.*;
import java.io.*;

public class problema4 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		
		Aluno[] alunos = null;
		
		int op = 0;
		
		while(true){
			
			println("Serviços Académicos - Gestão de uma pauta:");
			println("1 - Ler ficheiro com números mec. e pedir informação de notas");
			println("2 - Imprimir no terminal a informação da disciplina");
			println("3 - Calcular estatísticas das notas finais");
			println("4 - Alterar as notas de um aluno");
			println("5 - Imprimir um histograma de notas");
			println("6 - Gravar num ficheiro a informação da disciplina (ordenada)");
			println("7 - Terminar programa");
			System.out.print("Opcao -> ");
			
			op = sc.nextInt();
			
			switch(op){
				case 1: alunos = readFile(); break;
				case 2: printNotas(alunos); break;
				case 3: break;
				case 4: break;
				case 5: break;
				case 6: break;
				case 7: break;
				case 8: break;
				case 9: System.exit(0); break;
				default: System.exit(1);
			}
			System.out.println("\n\n");
		}
		
	}
	
	public static Aluno[] readFile() throws IOException {
		//System.out.print("Nome do ficheiro que pretende ler: ");
		//String filename = sc.next();
		
		File f = new File("notas.txt");
		//File f = new File(filename);
		Scanner scf = new Scanner(f);
		
		int count = 0;
		
		while(scf.hasNextLine()){
			count++;
			scf.nextLine();
		}
		scf.close();
		Aluno[] alunos = new Aluno[count];
		
		Scanner scfi = new Scanner(f);
		
		int i = 0;
		while(scfi.hasNext()) {	
			int nmec = scfi.nextInt();
			int n = -1;
			int r = -1;
			
			boolean validN = false;
			do{	
				System.out.print("\nNota normal do aluno " + nmec + ": ");
				n = sc.nextInt();
				if(n >= 0 && n<= 20 || n == 77)
					validN = true;
			}while(!validN);
			
			validN = false;
			do{	
				System.out.print("Nota recurso do aluno " + nmec + ": ");
				r = sc.nextInt();
				if(r >= 0 && r<= 20 || r == 77)
					validN = true;
			}while(!validN);
			
			alunos[i] = new Aluno(nmec, n, r);
			
			i++;
		}
		scfi.close();
		
		return alunos;
		
	}
	
	public static void printNotas(Aluno[] a) {
		println("\nPauta de uma disciplina");
		println("-----------------");
		for(int i = 0; i < a.length; i++){
			System.out.printf("|%6d |%2d |%2d |\n", a[i].mec, a[i].normal, a[i].recurso);
		}
		println("-----------------");
	}
	
	public static void println(String s){
		System.out.println(s);
	}
		
}

class Aluno {
	public int mec;
	public int normal;
	public int recurso;
	
	public Aluno(int m, int n, int r){
		this.mec = m;
		this.normal = n;
		this.recurso = r;
	}
}
