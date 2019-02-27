package aula3;

public class Carta {
	private final String tipo;
	
	public Carta(String tipo) {
		if(!tipo.equals("A") && !tipo.equals("B") && !tipo.equals("C") && !tipo.equals("D"))
			throw new IllegalArgumentException("Tipo de carta invalido!");
		this.tipo = tipo;
	}
	
	public String tipo() { return tipo;	}

	@Override
	public String toString() {
		return "Carta [tipo=" + tipo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
		Carta other = (Carta) obj;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}
	
}
