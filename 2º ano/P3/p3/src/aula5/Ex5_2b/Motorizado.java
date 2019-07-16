package aula5.Ex5_2b;

public abstract class Motorizado extends Veiculo {
	private final int cilindrada;
	private int maxVel;
	private int potencia;
	private COMBUSTIVEL comb;
	private double consumo;
	
	public Motorizado(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb) {
		super(ano, c, r);
		this.cilindrada = cil;
		this.maxVel = mv;
		this.potencia = p;
		this.consumo = consumo;
		this.comb = comb;
	}
	
	public Motorizado(int ano, Cor c, int r, int cil, int mv, int p, double consumo) {
		super(ano, c, r);
		this.cilindrada = cil;
		this.maxVel = mv;
		this.potencia = p;
		this.consumo = consumo;
		this.comb = COMBUSTIVEL.GASOLINA;
	}
	
	public int cilindrada() { return cilindrada; }
	public int maxVel() { return maxVel; }
	public int getPotencia() { return potencia; }
	public double getConsumo() { return consumo; }
	public COMBUSTIVEL getCombustivel() { return comb; }
	
	public void changeCombustivel(COMBUSTIVEL c) {
		this.comb = c;
	}

	@Override
	public String toString() {
		return "Motorizado [cilindrada=" + cilindrada + ", maxVel=" + maxVel + ", potencia=" + potencia + ", comb="
				+ comb + ", consumo=" + consumo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + cilindrada;
		result = prime * result + ((comb == null) ? 0 : comb.hashCode());
		long temp;
		temp = Double.doubleToLongBits(consumo);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + maxVel;
		result = prime * result + potencia;
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
		if (comb != other.comb)
			return false;
		if (Double.doubleToLongBits(consumo) != Double.doubleToLongBits(other.consumo))
			return false;
		if (maxVel != other.maxVel)
			return false;
		if (potencia != other.potencia)
			return false;
		return true;
	}
		

}
