package aula9.ex3;

public class VectorPessoas {
	private Pessoa[] pessoas;
	private int nPessoas;
	private Iterator iterator;
	
	public VectorPessoas(int space) {
		this.pessoas = new Pessoa[space];
		this.nPessoas = 0;
		this.iterator = new VectorIterator();
	}
	
	public VectorPessoas() {
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
	
	public Iterator iterator() {
		return iterator;
	}
	
	
	private class VectorIterator implements Iterator {
		
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
		public void remove() {
			throw new UnsupportedOperationException(
					"Operação não suportada!");
		}
		
	}
}
