package aula5.Ex5_2c;

public class BicicletaPolicia extends Bicicleta implements Policia {
	private TIPOEMERGENCIA emer;
	
	public BicicletaPolicia(int ano, Cor c, int nRodas, TIPOBIKE t, TIPOEMERGENCIA emer) {
		super(ano, c, nRodas, t);
		this.emer = emer;
	}
	
	public BicicletaPolicia(int ano, Cor c) {
		super(ano, c);
		this.emer = TIPOEMERGENCIA.PSP;
	}
	
	public BicicletaPolicia() {
		this.emer = TIPOEMERGENCIA.PSP;
	}
	
	public TIPOEMERGENCIA getTipo() { return emer;	}
	
	public int getID() { return this.id(); }

	@Override
	public String toString() {
		return "BicicletaPolicia" + super.toString() + ", emer=" + emer;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((emer == null) ? 0 : emer.hashCode());
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
		BicicletaPolicia other = (BicicletaPolicia) obj;
		if (emer != other.emer)
			return false;
		return true;
	}
	
	
}
