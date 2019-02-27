package aula5.Ex5_2c;

public class CarroPolicia extends Automovel implements Policia {
	private boolean prisioneiro;
	private TIPOEMERGENCIA emerg;
	
	public CarroPolicia(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb, boolean acidentado, boolean prision, TIPOEMERGENCIA emerg) {
		super(ano, c, r, cil, mv, p, consumo, comb, acidentado);
		this.prisioneiro = prision;
		this.emerg = emerg;
	}
	
	public CarroPolicia(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb) {
		super(ano, c, r, cil, mv, p, consumo, comb);
		this.prisioneiro = false;
		this.emerg = TIPOEMERGENCIA.GNR;
	}
	
	public CarroPolicia() {
		this.emerg = TIPOEMERGENCIA.GNR;
		this.prisioneiro = false;
	}
	
	public boolean prisioneiro() { return prisioneiro;	}
	public int getID() { return this.id(); }
	public TIPOEMERGENCIA getTipo() { return emerg; }
	
	public void setPrisioneiro(boolean p) {
		this.prisioneiro = p;
	}
	
	public void setTipo(TIPOEMERGENCIA emerg) {
		this.emerg = emerg;
	}

	@Override
	public String toString() {
		return "CarroPolicia:" + super.toString() + ", prisioneiro=" + prisioneiro + ", emerg=" + emerg;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((emerg == null) ? 0 : emerg.hashCode());
		result = prime * result + (prisioneiro ? 1231 : 1237);
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
		CarroPolicia other = (CarroPolicia) obj;
		if (emerg != other.emerg)
			return false;
		if (prisioneiro != other.prisioneiro)
			return false;
		return true;
	}
	
}
