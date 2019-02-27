package aula9.ex3;

public class BFIteratorVector {
	private Pessoa[] pessoas;
	private int nPessoas;
	private VectorBFIterator iterator;
	
	public BFIteratorVector(int space) {
		this.pessoas = new Pessoa[space];
		this.nPessoas = 0;
		this.iterator = new VectorBFIterator();
	}
	
	public BFIteratorVector() {
		this(10);
	}
	
	public boolean addPessoa(Pessoa p) {
		int size = pessoas.length;
		if(p == null) return false;
		if(nPessoas == size) {
			int newSize = size + 10;
			Pessoa[] newPessoas = new Pessoa[newSize]; 
			System.arraycopy(pessoas, 0, newPessoas, 0, size);
			pessoas = newPessoas;
		}
		pessoas[nPessoas++] = p;
		return true;
	}
	
	public boolean removePessoa(Pessoa p) {
		if(p == null) return false;
		for (int i = 0; i < nPessoas; i++) {
			if(pessoas[i] == p) {
				nPessoas--;
				for (int j = i; j < nPessoas;) {
					pessoas[j] = pessoas[j+1];
					return true;
				}
			}
		}
		return false;
	}
	
	public int totalPessoas() {
		return nPessoas;
	}
	
	public VectorBFIterator iterator() {
		return iterator;
	}
	
	
	private class VectorBFIterator implements BFIterator {
		
		public int indice = 0;

		@Override
		public boolean hasNext() {
			return indice < nPessoas;
		}

		@Override
		public Object next() {
			if(hasNext()) {
				Object o = pessoas[indice];
				indice++;
				return o;
			}
			throw new IndexOutOfBoundsException("only "
					+ nPessoas + " elements");
		}

		@Override
		public boolean hasPrevious() {
			return indice > 0;
		}

		@Override
		public Object previous() {
			if(hasPrevious()) {
				Object o = pessoas[indice-1];
				indice--;
				return o;
			}
			return null;
		}
		
	}
}
