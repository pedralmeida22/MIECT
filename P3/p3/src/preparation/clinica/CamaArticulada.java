package preparation.clinica;

public class CamaArticulada extends Cama {
	private static final long serialVersionUID = 1L;
	private boolean eletric;
	
	CamaArticulada(String d, int id, Material m, Dimensao dim, boolean col, boolean ele){
		super(d, id, m, dim, col);
		this.eletric = ele;
	}

	public boolean isEletric() {
		return eletric;
	}

	public void setEletric(boolean eletric) {
		this.eletric = eletric;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + (eletric ? 1231 : 1237);
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
		CamaArticulada other = (CamaArticulada) obj;
		if (eletric != other.eletric)
			return false;
		return true;
	}

	@Override
	public String toString() {
		if(eletric)
			return super.toString() + ", eletrica";
		else
			return super.toString() + ", manual";
	}
	
	
}
