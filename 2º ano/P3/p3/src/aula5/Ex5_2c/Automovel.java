package aula5.Ex5_2c;

public class Automovel extends Motorizado {	
	private boolean acidentado;
	
	public Automovel(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb, boolean acidentado) {
		super(ano, c, r, cil, mv, p, consumo, comb);
		this.acidentado = acidentado;
	}
	
	public Automovel(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb) {
		super(ano, c, r, cil, mv, p, consumo, comb);
		this.acidentado = false;
	}
	
	public Automovel() {
		super(1900, 250, 150, 6.8);
		this.acidentado = false;
	}
	
	public boolean acidentado() { return acidentado; }
	public void setAcidentado(boolean ac) {
		this.acidentado = ac; 
	}

	@Override
	public String toString() {
		return "Automovel:" + super.toString() + ", acidentado=" + acidentado;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + (acidentado ? 1231 : 1237);
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
		Automovel other = (Automovel) obj;
		if (acidentado != other.acidentado)
			return false;
		return true;
	}
	
	
}
