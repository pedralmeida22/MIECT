import java.util.*;
import java.io.*;

public class problema3 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		
		Robo[] robos = new Robo[0];;
		int op = 0;
		
		while(true){
			
			println("Micro-Rato - Gestao de prova:");
			println("1 - Adicionar informacao relativa a um robo");
			println("2 - Imprimir informação dos robôs em prova");
			println("3 - Vencedor da prova e tempos médios de prova");
			println("4 - Média do número de elementos por equipa");
			println("5 - Mostrar o nome dos robôs em maiúsculas");
			println("6 - Alterar informação de um robô");
			println("7 - Remover robôs da competição");
			println("8 - Gravar informacao da prova num ficheiro");
			println("9 - Terminar programa");
			System.out.print("Opcao -> ");
			
			op = sc.nextInt();
			
			switch(op){
				case 1: robos = addRobo(robos); break;
				case 2: printRobos(robos); break;
				case 3: Robo r = winner(robos);
						System.out.println("\nVencedor: " + r.name);
						System.out.println("\nMedia de tempos: " + averageTime(robos)); break;
				case 4: System.out.println("\nMedia de elementos da equipa: " + averageElem(robos)); break;
				case 5: sortByName(robos); break;
				case 6: robos = changeRobo(robos); break;
				case 7: robos = deleteRobo(robos); break;
				case 8: saveInFile(robos); break;
				case 9: System.exit(0); break;
				default: System.exit(1);
			}
			System.out.println("\n\n");
		}
		
	}
	
	public static Robo[] addRobo(Robo[] r){
		Robo[] r2 = new Robo[r.length + 1];
		
		println("\nNome do robo: ");
		String n = sc.next();
		
		println("Tempo da prova (em segundos): ");
		int t = sc.nextInt();
		
		println("Numero de elementos da equipa: ");
		int e = sc.nextInt();
		
		for(int i = 0; i < r.length; i++){
			r2[i] = r[i];
		}
		
		r2[r.length] = new Robo(n, t, e);
		
		println("\nRobo adicionado com sucesso!");
		
		return r2;
	}
	
	public static void printRobos(Robo[] r){
		for (int i = 0; i < r.length; i++){
			System.out.println("Robo " + i + " | Nome: " + r[i].name + "; Tempo: " + convert(r[i].time) + "; Elementos: " + r[i].nElem);
		}
		
	}
	
	public static Robo winner(Robo[] r){
		Robo temp = r[0];
		
		int maxT = r[0].time;  // melhor tempo comeca com o 1 valor
		
		for(int i = 0; i < r.length; i++){
			 if(r[i].time < maxT){
				 maxT = r[i].time;
				 temp = r[i];
			 }
		}
		return temp;
	}
	
	public static double averageTime(Robo[] r){
		int t = 0;
		
		for(int i = 0; i < r.length; i++){
			t += r[i].time;
		}
		
		return t / r.length;
		
	}
	
	public static double averageElem(Robo[] r){
		int e = 0;
		
		for(int i = 0; i < r.length; i++){
			e += r[i].nElem;
		}
		
		return e / r.length;
		
	}
	
	public static void sortByName(Robo[] r){
		boolean trocas;
		
		do{
			trocas = false;
			
			for(int i = 0; i < r.length - 1; i++){
				if(r[i].name.compareTo(r[i+1].name) < 0){
					Robo t = r[i];
					r[i] = r[i+1];
					r[i+1] = t;
					trocas = true;
				}
			}
			
		}while(trocas);
		
		for(int i = 0; i < r.length; i++){
			System.out.println(r[i].name.toUpperCase());
		}
	}
	
	public static Robo[] changeRobo(Robo[] r){
		boolean find = false;
		
		println("\nNome do robo que pretende mudar: ");
		String n = sc.next();
		
		for(int i = 0; i < r.length; i++){
			if(r[i].name.compareTo(n) == 0){
				find = true;
				println("Robo encontrado!");
				
				println("\nNovo nome: ");
				r[i].name = sc.next();
				
				println("Novo tempo de prova (em segundos): ");
				r[i].time = sc.nextInt();
				
				println("Novo numero de elemntos: ");
				r[i].nElem = sc.nextInt();
			}
		}
		if(!find) println("Nenhum robo encontrado com o nome inserido!");
		
		return r;
	}
	
	public static Robo[] deleteRobo(Robo[] r) {
		System.out.print("\nTempo limite de prova desejado: ");
		int maxT = sc.nextInt();
		
		int countNull = 0;
		
		for(int i = 0; i < r.length; i++){
			if(r[i].time > maxT){
				r[i] = null;
				countNull++;
			}
		}
		
		Robo[] r2 = new Robo[r.length - countNull];
		
		int k = 0;
		for(int i = 0; i < r.length; i++){
			if(r[i] != null){
				r2[k] = r[i];
			}
		}
		println(countNull + " robos eliminados");
		
		return r2;
	}
	
	public static void saveInFile(Robo[] r) throws IOException {
		println("Nome do ficheiro pretendido: ");
		String filename = sc.next();
		
		File f = new File(filename);
		PrintWriter pw = new PrintWriter(f);
		
		for(int i = 0; i < r.length; i++){
			pw.println("Robo " + i + " | Nome: " + r[i].name + "; Tempo: " + convert(r[i].time) + "; Elementos: " + r[i].nElem);
		}
		
		pw.close();
		
		println("\nEscrito no ficheiro " + filename + " com sucesso!");
	}
	
	private static String convert(int seg){
		int h = seg / 3600;
		int m = (seg % 3600) / 60;
		seg = seg % 60;
		
		return String.format("%d:%d:%d", h, m, seg);
	}
	
	public static void println(String s){
		System.out.println(s);
	}
}


class Robo {
	public String name;
	public int time;
	public int nElem;
	
	public Robo(String n, int t, int e){
		this.name = n;
		this.time = t;
		this.nElem = e;
	}
	
}
