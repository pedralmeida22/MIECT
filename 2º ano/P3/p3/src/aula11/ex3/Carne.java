package aula11.ex3;

public class Carne extends Alimento {
	private VariedadeCarne vCarne;
	
	public Carne(VariedadeCarne vCarne, double pro, double cal, double peso) {
		super(pro, cal, peso);
		this.vCarne = vCarne;
	}
	
	public VariedadeCarne vaCarne() { return vCarne; }

	@Override
	public String toString() {
		return "Carne [vCarne=" + vCarne + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((vCarne == null) ? 0 : vCarne.hashCode());
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
		Carne other = (Carne) obj;
		if (vCarne != other.vCarne)
			return false;
		return true;
	}
	
	
}
