package aula6.Ex6_1;

public class Peixe extends Alimento {
	private TipoPeixe tipo;
	
	public Peixe(TipoPeixe t, double pro, double cal, double peso) {
		super(pro, cal, peso);
		this.tipo = t;
	}
	
	public TipoPeixe getTipo() { return tipo; }

	@Override
	public String toString() {
		return "Peixe [tipo=" + tipo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
		Peixe other = (Peixe) obj;
		if (tipo != other.tipo)
			return false;
		return true;
	}
	
	
}
