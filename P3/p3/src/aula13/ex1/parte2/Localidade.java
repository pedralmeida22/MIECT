package aula13.ex1.parte2;

public class Localidade {
	private final String nome;
	private int populacao;
	
	Localidade(String n, int p) {
		this.nome = n;
		this.populacao = p;
	}

	public int getPopulacao() {
		return populacao;
	}

	public String getNome() {
		return nome;
	}

	@Override
	public String toString() {
		return "Localidade: " + nome + ", " + populacao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + populacao;
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
		Localidade other = (Localidade) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (populacao != other.populacao)
			return false;
		return true;
	}
	
	
	
	
}
