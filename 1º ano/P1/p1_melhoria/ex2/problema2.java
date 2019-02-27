import java.util.*;


public class problema2 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int op;
		Piloto[] pilots = null;
		while(true){
			
			System.out.print("(1) - Inserir informacao dos pilotos\n" +
							 "(2) - Listar pilotos ordenados pelo numero da viatura\n" + 
							 "(3) - Alterar informacao de um piloto\n" +
							 "(4) - Remover piloto com base no numero da viatura\n" +
							 "(5) - Listar pilotos ordenados pelo nome\n" + 
							 "(6) - Remover piloto(s) com base no nome\n" +
							 "(7) - Validar matriculas\n" + 
							 "(8) - Terminar programa\n" +
							 "-->");
							 
			op = sc.nextInt();
			
			switch(op){
				case 1 : pilots = createPilots(); break;
				case 2 : sortByNum(pilots); break;
				case 3 : changePilot(pilots); break;
				case 4 : pilots = removePilot(pilots); break;
				case 5 : sortByName(pilots); break;
				case 6 : pilots = remPilots(pilots); break;
				case 7 : checkAllMat(pilots); break;
				case 8 : System.exit(0); 
				default : System.exit(1);
			}
		}
	}
	
	public static Piloto[] createPilots() {
		Piloto[] pilots = new Piloto[3];
		
		for(int i = 0; i < pilots.length; i++){
			pilots[i] = newPilot();
		}
		
		return pilots;
	}
	
	public static Piloto newPilot() {
		println("Nome do piloto: ");
		String n = sc.next();

		println("Matricula: ");
		String m = sc.next();
		
		return new Piloto(n, m);
	}
	
	public static Piloto[] removePilot(Piloto[] p) {  // pelo n
		println("Numero da viatura do piloto que pretende eliminar: ");
		int n = sc.nextInt();
		
		int count = 0;
		for(int i = 0; i < p.length; i++){
			if(p[i].nViatura == n){
				p[i] = null;
				count++;
			}
		}
		if(count == 0){
			println("O numero da viatura nao existe!");
		}
		
		Piloto[] p2 = new Piloto[p.length - count];
		
		int j = 0;
		for(int i = 0; i < p.length; i++){
			if(p[i] != null){
				p2[j] = p[i];
				j++;
			}
		}
		
		return p2;
	}
	
	public static Piloto[] remPilots(Piloto[] p) { //by name
		println("Nome do piloto que pretende remover: ");
		String s = sc.next();
		
		int count = 0;
		String n = null;
		for(int i = 0; i < p.length; i++){
			n = p[i].nome;
			if(n.compareTo(s) == 0){
				p[i] = null;
				count++;
			}
		}
		
		if(count == 0){
			println("Nenhum piloto com o nome inserido!");
		}
		
		Piloto[] p2 = new Piloto[p.length - count];
		
		int j = 0;
		for(int i = 0; i < p.length; i++){
			if(p[i] != null){
				p2[j] = p[i];
				j++;
			}
		}
		
		return p2;
	}
	
	public static void changePilot(Piloto[] p) {
		println("Numero da viatura do piloto que pretende mudar: ");
		int n = sc.nextInt();
		
		for(int i = 0; i < p.length; i++){
			if(p[i].nViatura == n){
				println("Piloto encontrado!");
				p[i] = newPilot();
				break;
			}
		}
		System.out.println("Nenhuma viatura com o numero " + n + "!");
	}
	
	public static void printPilots(Piloto[] p){
		for(Piloto i : p){
			System.out.println("Nome: " + i.nome + "| Matricula: " + i.matricula + "| Viatura: " + i.nViatura);
		}
	}
	
	public static void sortByNum(Piloto[] p){
		boolean trocas;
		
		do{
			trocas = false;
			
			for(int i = 0; i < p.length -1; i++){
				if(p[i].nViatura < p[i+1].nViatura){
					Piloto temp = p[i];
					p[i] = p[i+1];
					p[i+1] = temp;
					trocas = true;
				}
			}
		}while(trocas);
		
		printPilots(p);
	}
	
	public static void sortByName(Piloto[] p){
		boolean trocas;
		
		do{
			trocas = false;
			for(int i = 0; i < p.length - 1; i++){
				if(p[i].nome.compareTo(p[i+1].nome) > 0){
					Piloto temp = p[i];
					p[i] = p[i+1];
					p[i+1] = temp;
					trocas = true;
				}
			}
		}while(trocas);
		
		printPilots(p);
	}
	
	public static boolean isValid(String m){
		if(m.length() != 8) return false;
		
		else if(m.charAt(2) != '-' && m.charAt(5) != '-') return false;
		else if(Character.isLetter(m.charAt(0)) && Character.isLetter(m.charAt(1)) && Character.isDigit(m.charAt(3)) && Character.isDigit(m.charAt(4)) && Character.isDigit(m.charAt(6)) && Character.isDigit(m.charAt(7))) return true;
		else if(Character.isDigit(m.charAt(0)) && Character.isDigit(m.charAt(1)) && Character.isLetter(m.charAt(3)) && Character.isLetter(m.charAt(4)) && Character.isDigit(m.charAt(6))&& Character.isDigit(m.charAt(7))) return true;
		else if(Character.isDigit(m.charAt(0)) && Character.isDigit(m.charAt(1)) && Character.isDigit(m.charAt(3)) && Character.isDigit(m.charAt(4)) && Character.isLetter(m.charAt(6)) && Character.isLetter(m.charAt(7))) return true;
		
		return false;
	}
	
	public static void checkAllMat(Piloto[] p){
		boolean allgood = true;
		for(int i = 0; i < p.length; i++){
			String s = p[i].matricula;
			if(!isValid(s)){
				allgood = false;
				System.out.println("Viatura numero " + p[i].nViatura + " tem matricula invalida!");
			}
			while(!isValid(s)){
				println("Nova matricula: ");
				s = sc.next();
			}
			p[i].matricula = s;
		}
		if(allgood){
			println("Todas as matriculas estao bem!");
		}
	}
	
	public static void println(String s){
		System.out.println(s);
	}
	
}

class Piloto {
	public int nViatura = 0;
	public static int counter = 0;
	public String nome;
	public String matricula;
	
	public Piloto(String n, String m){
		this.nome = n;
		this.matricula = m;
		counter++;
		this.nViatura = counter;
	}
	
}

