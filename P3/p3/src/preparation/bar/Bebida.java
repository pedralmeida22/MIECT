package preparation.bar;

import java.io.Serializable;

public abstract class Bebida implements Serializable {
	private static final long serialVersionUID = 1L;
	private String name;
	private int quant;
	private double price;
	
	Bebida(String n, int q, double p){
		this.name = n;
		this.quant = q;
		this.price = p;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuant() {
		return quant;
	}

	public void setQuant(int quant) {
		this.quant = quant;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + quant;
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
		Bebida other = (Bebida) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
			return false;
		if (quant != other.quant)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Bebida: " + name + ", " + quant + "cl, " + price + "€";
	}
	
}
