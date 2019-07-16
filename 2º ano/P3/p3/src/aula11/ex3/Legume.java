package aula11.ex3;

public class Legume extends Alimento implements AlimentoVegetariano {
	private String nome;
	
	public Legume(String n, double pro, double cal, double peso) {
		super(pro, cal, peso);
		this.nome = n;
	}
	
	public String getNome() { return nome; }

	@Override
	public String toString() {
		return "Legume [nome=" + nome + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Legume other = (Legume) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}
	
	
}
