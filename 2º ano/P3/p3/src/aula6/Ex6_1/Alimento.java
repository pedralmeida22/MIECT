package aula6.Ex6_1;

public abstract class Alimento implements Comparable<Alimento> {
	private final double calorias;
	private final double peso;
	private final double proteinas;
	
	public Alimento(double pro, double cal, double p) {
		this.calorias = cal;
		this.peso = p;
		this.proteinas = pro;
	}

	public double getCalorias() {
		return calorias;
	}

	public double getPeso() {
		return peso;
	}

	public double getProteinas() {
		return proteinas;
	}
	
	@Override
	public int compareTo(Alimento alimento) {
		return (int) (this.getCalorias() - alimento.getCalorias()); 
	}

	@Override
	public String toString() {
		return "Alimento [calorias=" + calorias + ", peso=" + peso + ", proteinas=" + proteinas + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(calorias);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(peso);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(proteinas);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Alimento other = (Alimento) obj;
		if (Double.doubleToLongBits(calorias) != Double.doubleToLongBits(other.calorias))
			return false;
		if (Double.doubleToLongBits(peso) != Double.doubleToLongBits(other.peso))
			return false;
		if (Double.doubleToLongBits(proteinas) != Double.doubleToLongBits(other.proteinas))
			return false;
		return true;
	}
	
	
}
