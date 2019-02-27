package aula11.ex3;

public class PratoDieta extends Prato {
	private final double maxCalorias;
	
	public PratoDieta(String n, double maxCal) {
		super(n);
		this.maxCalorias = maxCal;
	}
	
	@Override 
	public boolean addIngrediente(Alimento alimento) {
		if(alimento == null) return false;
		if(super.getCalorias() + alimento.getCalorias() <= maxCalorias) {
			super.addIngrediente(alimento);
		}
		return true;
	}

	@Override
	public String toString() {
		return super.toString() + " PratoDieta [maxCalorias=" + maxCalorias + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(maxCalorias);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		PratoDieta other = (PratoDieta) obj;
		if (Double.doubleToLongBits(maxCalorias) != Double.doubleToLongBits(other.maxCalorias))
			return false;
		return true;
	}
	
	
}
