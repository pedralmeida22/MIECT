package preparation.clinica;

import java.io.Serializable;

public class Dimensao implements Serializable {
	private static final long serialVersionUID = 1L;
	private double comp;
	private double lar;
	
	Dimensao(double c, double l){
		this.comp = c;
		this.lar = l;
	}

	public double getComp() {
		return comp;
	}

	public void setComp(double comp) {
		this.comp = comp;
	}

	public double getLar() {
		return lar;
	}

	public void setLar(double lar) {
		this.lar = lar;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(comp);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(lar);
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
		Dimensao other = (Dimensao) obj;
		if (Double.doubleToLongBits(comp) != Double.doubleToLongBits(other.comp))
			return false;
		if (Double.doubleToLongBits(lar) != Double.doubleToLongBits(other.lar))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "com " + comp + " de comprimento, " + lar + " de largura";
	}
	
	
}
