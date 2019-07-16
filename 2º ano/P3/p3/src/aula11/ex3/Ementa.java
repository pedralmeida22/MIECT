package aula11.ex3;
import java.util.*;

public class Ementa {
	private String nome;
	private String local;
	private HashMap<DiaSemana, LinkedList<Prato>> ementa;
	
	public Ementa(String nome, String local) {
		this.nome = nome;
		this.local = local;
		this.ementa = new HashMap<>();
	}
	
	public void addPrato(Prato prato, DiaSemana dia) {
		if(ementa.containsKey(dia)) {
			ementa.get(dia).add(prato);
		}else {
			LinkedList<Prato> newList = new LinkedList<>();
			newList.add(prato);
			ementa.put(dia, newList);
		}
	}
	
	public void removePrato(Prato prato, DiaSemana dia) {
		if(ementa.containsKey(dia))
			ementa.get(dia).remove(prato);
		else {
			System.out.println("O prato nao esta na ementa!");
		}
	}

	@Override
	public String toString() {
		String s = "";
		DiaSemana[] sorted = ementa.keySet().toArray(new DiaSemana[0]);
		Arrays.sort(sorted);
		for(DiaSemana dia : sorted) {
			LinkedList<Prato> list = ementa.get(dia);
			for(Prato p : list.toArray(new Prato[0])) {
				s += p.toString()+", dia "+dia+"\n";
			}
		}
		return s;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ementa == null) ? 0 : ementa.hashCode());
		result = prime * result + ((local == null) ? 0 : local.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ementa other = (Ementa) obj;
		if (ementa == null) {
			if (other.ementa != null)
				return false;
		} else if (!ementa.equals(other.ementa))
			return false;
		if (local == null) {
			if (other.local != null)
				return false;
		} else if (!local.equals(other.local))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}
	
	
}
