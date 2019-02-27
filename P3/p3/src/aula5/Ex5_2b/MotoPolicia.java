package aula5.Ex5_2b;

public class MotoPolicia extends Moto implements Policia {
	private boolean sirene;
	private TIPOEMERGENCIA emer;
	
	public MotoPolicia(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb, TIPOMOTO t, boolean sirene, TIPOEMERGENCIA emer) {
		super(ano, c, r, cil, mv, p, consumo, comb, t);
		this.sirene = sirene;
		this.emer = emer;
	}
	
	public MotoPolicia(int ano, Cor c, int r, int cil, int mv, int p, double consumo) {
		super(ano, c, r, cil, mv, p, consumo);
		this.sirene = false;
		this.emer = TIPOEMERGENCIA.PSP;
	}
	
	public boolean sirene() { return sirene; }
	public TIPOEMERGENCIA getTipo() { return emer; }
	public int getID() { return this.id(); }
	
	public void onOffSirene() {
		this.sirene = !sirene;
	}

	@Override
	public String toString() {
		return "MotoPolicia [sirene=" + sirene + ", emer=" + emer + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((emer == null) ? 0 : emer.hashCode());
		result = prime * result + (sirene ? 1231 : 1237);
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
		MotoPolicia other = (MotoPolicia) obj;
		if (emer != other.emer)
			return false;
		if (sirene != other.sirene)
			return false;
		return true;
	}
	
 
}
