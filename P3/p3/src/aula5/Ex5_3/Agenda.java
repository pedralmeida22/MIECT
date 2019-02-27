package aula5.Ex5_3;
import java.util.*;
import java.io.*;

public class Agenda {
	private List<Pessoa> agenda = new ArrayList<>();
	
	public void lerFicheiro(String filename) throws IOException{
		Scanner read = new Scanner(new File(filename));
		String format = read.nextLine();
		read.close();
		FormatoAgenda formato = null;
		if(format.equals("Nokia")) {
			formato = new Nokia();
		}else if(format.equals("vCard")){
			formato = new vCard();
		}else if(format.equals("CSV")){
			formato = new CSV();
		}
		for(Pessoa p : formato.readFile(filename)) {
			addContact(p);
		}
	}
	
	public void guardarFicheiro(String filename, FormatoAgenda formato) throws IOException {
		formato.writeFile(filename, agendaToArray());
	}
	
	public void addContact(Pessoa p) {
		agenda.add(p);
	}
	
	public void removeContact(Pessoa p) {
		agenda.remove(p);
	}
	
	private Pessoa[] agendaToArray() {
		return agenda.toArray(new Pessoa[0]);
	}
	
	public int numContacts() {
		return agenda.size();
	}

	@Override
	public String toString() {
		return "Agenda [agenda=" + agenda + "]";
	}
	
	
}
