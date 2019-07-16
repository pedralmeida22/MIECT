package preparation.clinica;

public class CadeiraRodas extends Cadeira implements Transporte {
	private static final long serialVersionUID = 1L;
	private int nRodas;
	private boolean eletrica;
	private TransportType tipo;
	
	public CadeiraRodas(String d, int id, Material m, int apoios, double alt, Tipo t, int rodas, boolean ele) {
		super(d, id, m, apoios, alt, t);
		this.nRodas = rodas;
		this.eletrica = ele;
		this.tipo = TransportType.MobilidadeReduzida;
	}

	public int getnRodas() {
		return nRodas;
	}

	public void setnRodas(int nRodas) {
		this.nRodas = nRodas;
	}

	public boolean isEletrica() {
		return eletrica;
	}

	public void setEletrica(boolean eletrica) {
		this.eletrica = eletrica;
	}
	
	@Override
	public TransportType getTipo() {
		return tipo;
	}

	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + (eletrica ? 1231 : 1237);
		result = prime * result + nRodas;
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
		CadeiraRodas other = (CadeiraRodas) obj;
		if (eletrica != other.eletrica)
			return false;
		if (nRodas != other.nRodas)
			return false;
		if (tipo != other.tipo)
			return false;
		return true;
	}

	@Override
	public String toString() {
		if(eletrica)
			return super.toString() + ", CadeiraRodas com " + nRodas + " rodas, eletrica, para " + tipo;
		else
			return super.toString() + ", CadeiraRodas com " + nRodas + " rodas, manual, para " + tipo;
	}
	
	
}
