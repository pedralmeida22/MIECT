package aula2;

import java.util.Scanner;

public class problema2_1 {
	static Scanner sc = new Scanner(System.in);
	static VideoClube videoClube = new VideoClube(5);
	
	public static void main(String[] args) {
		
		int opcao = -1;
		
		while(true) {
			System.out.println("-------------------------------------------");
			System.out.println("|            Gestao Videoclube            |");
			System.out.println("-------------------------------------------");
			System.out.println("|(1) - Adicionar cliente                  |");
			System.out.println("|(2) - Remover cliente                    |");
			System.out.println("|(3) - Adicionar video                    |");
			System.out.println("|(4) - Remover video                      |");
			System.out.println("|(5) - Catalogo de videos                 |"); 
			System.out.println("|(6) - Verificar disponibilidade de video |");
			System.out.println("|(7) - Requisitar video                   |");
			System.out.println("|(8) - Devolver video                     |");
			System.out.println("|(9) - Historico de utilizador            |");
			System.out.println("|(0) - Sair                               |");
			System.out.println("------------------------------------------");
			
			try {
				System.out.println("Opcao: ");
				opcao = sc.nextInt();
				sc.nextLine();
			}catch(NumberFormatException e) {
				System.err.println("Nao e um numero!");
			}
			
			try {
				if(opcao == 1) addClient();
				else if(opcao == 2) removeClient();
				else if(opcao == 3) addVideo();
				else if(opcao == 4) removeVideo();
				else if(opcao == 5) catalogo();
				else if(opcao == 6) available();
				else if(opcao == 7) requisitarVideo();
				else if(opcao == 8) devolverVideo();
				else if(opcao == 9) printHistorico();
				else if(opcao == 0) System.exit(0);
				else throw new IllegalArgumentException();
				
			}catch(Exception e) {
				System.out.println("Opcao invalida!");
			}
		}
	}
		
	public static void addClient() {
		System.out.println("(1) - Estudante");
		System.out.println("(2) - Funcionario");
		System.out.println("Opcao: ");
		int op = sc.nextInt(); sc.nextLine();
		
		if(op == 1) {
			System.out.print("Nome: ");
			String nome = sc.nextLine();
			System.out.print("CC: ");
			int cc = Integer.parseInt(sc.nextLine());
			System.out.print("Data de Nascimento (dd-mm-aaaa): ");
			String[] date = sc.nextLine().split("-");
			int day = Integer.parseInt(date[0]);
			int month = Integer.parseInt(date[1]);
			int year = Integer.parseInt(date[2]);
			System.out.print("NMEC: ");
			int nmec = Integer.parseInt(sc.nextLine());
			System.out.print("Curso: ");
			String curso = sc.nextLine();
				
			videoClube.addClient(new Estudante(nome, cc, new Data(day,month,year), nmec, curso));
		}
		else if(op == 2) {
			System.out.print("Nome: ");
			String nome = sc.nextLine();
			System.out.print("CC: ");
			int cc = Integer.parseInt(sc.nextLine());
			System.out.print("Data de Nascimento (dd-mm-aaaa): ");
			String[] date = sc.nextLine().split("-");
			int day = Integer.parseInt(date[0]);
			int month = Integer.parseInt(date[1]);
			int year = Integer.parseInt(date[2]);
			System.out.print("Numero de funcionario: ");
			int nFunc = sc.nextInt();
			System.out.print("Numero de identificacao fiscal: ");
			int nFiscal = sc.nextInt();
				
			videoClube.addClient(new Funcionario(nome, cc, new Data(day,month,year), nFunc, nFiscal));
		}
	}
		
	public static void removeClient() {
		System.out.println("CC: ");
		int cc = sc.nextInt(); sc.nextLine();
		videoClube.removeClient(cc);
	}
	
	public static void addVideo() {
		System.out.print("Titulo: ");
		String title = sc.nextLine();
		System.out.print("Idade: ");
		String age = sc.nextLine();
		System.out.println("1 - Ação");
		System.out.println("2 - Comédia");
		System.out.println("3 - Infantil");
		System.out.println("4 - Drama");
		System.out.print("Categoria: ");
		int cat = sc.nextInt(); sc.nextLine();
		
		String category = null;
		
		if(cat == 1) 
			category = "action";
		else if(cat == 2)
			category = "comedy";
		else if(cat == 3)
			category = "children";
		else if(cat == 4)
			category = "drama";
		
		videoClube.addVideo(title, age, category);
	}
	
	public static void removeVideo() {
		System.out.println("Id do video: ");
		int id = sc.nextInt(); sc.nextLine();
		videoClube.removeVideo(id);
	}
	
	public static void catalogo() {
		videoClube.printCatalogo();
	}
	
	public static void available() {
		System.out.println("Id do video: ");
		int id = sc.nextInt(); sc.nextLine();
		System.out.println(videoClube.isAvailable(id));
	}
	
	public static void requisitarVideo() {
		System.out.println("ID do video: ");
		int id = sc.nextInt(); sc.nextLine();
		System.out.print("CC do utilizador: ");
		int cc = sc.nextInt(); sc.nextLine();
				
		videoClube.requisitarVideo(id, cc);
	}
	
	public static void devolverVideo() {
		System.out.print("ID do video: ");
		int id = sc.nextInt(); sc.nextLine();
		System.out.print("CC do utilizador: ");
		int cc = sc.nextInt(); sc.nextLine();
		System.out.print("Rating(0-10): ");
		int r = sc.nextInt(); sc.nextLine();
		if(r<0||r>10) {
			System.out.println("Rating fora dos limites!");
			return;
		}
		videoClube.devolverVideo(id, cc, r);
	}
	
	public static void printHistorico() {
		System.out.println("CC do cliente: ");
		int cc = sc.nextInt(); sc.nextLine();
		videoClube.printHistorico(cc);
	}

}


