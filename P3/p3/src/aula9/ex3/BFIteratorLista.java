package aula9.ex3;

import java.util.LinkedList;
import java.util.List;

public class BFIteratorLista {
	private List<Pessoa> pessoas;
	private ListaIterator iterator;
	
	public BFIteratorLista() {
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
	
	public ListaIterator iterator() { return iterator; }
	
	
	private class ListaIterator implements BFIterator {
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
		public boolean hasPrevious() {
			return indice > 0;
		}

		@Override
		public Object previous() {
			if(hasPrevious()) {
				Object o = pessoas.get(indice-1);
				indice--;
				return o;
			}
			return null;
		}
	}
}
