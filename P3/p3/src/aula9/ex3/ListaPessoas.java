package aula9.ex3;
import java.util.*;

public class ListaPessoas {
	private List<Pessoa> pessoas;
	private Iterator iterator;
	
	public ListaPessoas() {
		this.pessoas = new LinkedList<>();
		this.iterator = new ListaIterator();
	}
	
	public void addPessoa(Pessoa p) {
		pessoas.add(p);
	}
	public void removePessoa(Pessoa p) {
		pessoas.remove(p);
	}
	
	public int size() { return pessoas.size(); }
	
	public Iterator iterator() { return iterator; }
	
	
	private class ListaIterator implements Iterator {
		public int indice = 0;

		@Override
		public boolean hasNext() {
			return indice < size();
		}

		@Override
		public Object next() {
			if(hasNext()) {
				Object o = pessoas.get(indice);
				indice++;
				return o;
			}
			throw new IndexOutOfBoundsException("only "
					+ size() + " elements");
		}

		@Override
		public void remove() {
			throw new UnsupportedOperationException(
					"Operação não suportada!");
		}
	}
}
