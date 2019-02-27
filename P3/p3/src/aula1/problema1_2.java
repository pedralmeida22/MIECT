package aula1;
import java.util.*;

public class problema1_2 {
	static Scanner sc = new Scanner(System.in);
	static List<Pessoa> people = new ArrayList<>();
	public static void main(String[] args) {
		
		int opcao = 0;
		
		while(true) {
			System.out.println("--------------------------");
			System.out.println("|      Gerir Pessoas     |");
			System.out.println("--------------------------");
			System.out.println("|(1) - Adicionar pessoa  |");
			System.out.println("|(2) - Remover pessoa    |");
			System.out.println("|(3) - Ver lista completa|");
			System.out.println("|(4) - Ordenar por nome  |");
			System.out.println("|(5) - Ordenar por cc    |");
			System.out.println("|(6) - Sair              |");
			System.out.println("-------------------------");
			System.out.println("Opcao: ");
			
			try {
				opcao = Integer.parseInt(sc.nextLine());
			}catch(NumberFormatException e) {
				System.err.println("Nao e um numero!");
			}
			
			if(opcao == 1) addPerson();
			else if(opcao == 2) removePerson();
			else if(opcao == 3) printList();
			//else if(opcao == 4) sortName();
			//else if(opcao == 5) sortCc();
			else if(opcao == 6) System.exit(0);
			System.out.println("----------------------");
		}

	}
	public static void addPerson() {
		System.out.println("Nome: ");
		String nome = sc.nextLine();
		
		System.out.println("Numero de cc: ");
		int cc = Integer.parseInt(sc.nextLine());
		
		System.out.println("Data de nascimento (dd-mm-aaaa): ");
		String inData = sc.nextLine();
		
		String[] data = inData.split("-");
		if(data.length != 3) System.err.println("Data invalida!");
		Data date = new Data(Integer.parseInt(data[0]), Integer.parseInt(data[1]), Integer.parseInt(data[2]));
		
		people.add(new Pessoa(nome, cc, date));
		
		System.out.println("Pessoa adicionada com sucesso!");
		
	}
	
	public static void removePerson() {
		if(people.size() == 0) {
			System.out.println("A lista esta vazia! Nada a remover.");
			return;
		}
		
		System.out.println("Pessoa a remover: ");
		String nome = sc.nextLine();
		
		for(Pessoa i : peopleToArray()) {
			if(i.nome().equals(nome)) {
				people.remove(i);
			}
		}
		
	}
	
	public static void printList() {
		Pessoa[] arr = peopleToArray();
		System.out.println("--------------------------");
		System.out.println("|  Nome  |  CC  |  Data  |");
		System.out.println("--------------------------");
		for(Pessoa i : arr) {
			System.out.println("| " + i + " |");
		}
		System.out.println("--------------------------");
	}
	
	//public static void sortName() {
		
	//}
	
	//public static void sortCc() {
		
	//}
	
	public static Pessoa[] peopleToArray() {
		return people.toArray(new Pessoa[0]);
	}

}
