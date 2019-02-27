package preparation.bar;

public class Agua extends Bebida {
	private static final long serialVersionUID = 1L;
	private Tipo tipo;
	
	public enum Tipo{
		Nascente, Mineral;
	}

	public Agua(String n, int q, double p, Tipo t) {
		super(n, q, p);
		this.tipo = t;
	}

	public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
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
		Agua other = (Agua) obj;
		if (tipo != other.tipo)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return super.toString() + ", agua " + tipo;
	}
	
	
}
