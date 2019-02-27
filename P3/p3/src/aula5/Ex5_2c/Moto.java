package aula5.Ex5_2c;

public class Moto extends Motorizado {
	private TIPOMOTO tipo;
	
	public Moto(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb, TIPOMOTO t) {
		super(ano, c, r, cil, mv, p, consumo, comb);
		this.tipo = t;
	}
	
	public Moto() {
		super(2, 1200, 299, 80, 4.5);
		this.tipo = TIPOMOTO.TOURING;
	}
	
	public TIPOMOTO tipo() { return tipo; }
	public void changeTipo(TIPOMOTO t) { 
		this.tipo = t;
	}

	@Override
	public String toString() {
		return "Moto:" + super.toString() + ", tipo=" + tipo;
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
		Moto other = (Moto) obj;
		if (tipo != other.tipo)
			return false;
		return true;
	}
	
	
}
