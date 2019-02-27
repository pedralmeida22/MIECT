package aula5.Ex5_2a;

public abstract class Motorizado extends Veiculo {
	private int cilindrada;
	private int maxVel;
	
	public Motorizado(int ano, Cor c, int r, int cil, int mv) {
		super(ano, c, r);
		this.cilindrada = cil;
		this.maxVel = mv;
	}
	
	public int cilindrada() { return cilindrada; }
	public int maxVel() { return maxVel; }

	@Override
	public String toString() {
		return "Automovel [cilindrada=" + cilindrada + ", maxVel=" + maxVel + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + cilindrada;
		result = prime * result + maxVel;
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
		Motorizado other = (Motorizado) obj;
		if (cilindrada != other.cilindrada)
			return false;
		if (maxVel != other.maxVel)
			return false;
		return true;
	}
}
