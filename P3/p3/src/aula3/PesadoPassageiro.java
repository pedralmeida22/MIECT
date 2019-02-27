package aula3;

public class PesadoPassageiro extends Veiculo {
	private CIDADE destino;
	public final String cartaNecessaria = "D";
	
	public PesadoPassageiro(Condutor c, int lotacao, int cilindrada, int potencia, int pesoBruto, CIDADE d) {
		super(c, lotacao, cilindrada, potencia, pesoBruto);
		this.destino = d;
	}
	
	public PesadoPassageiro(Condutor c, CIDADE d) {
		super(c,50,6000,350,6000);
		this.destino = d;
	}
	
	public PesadoPassageiro(Condutor c) {
		super(c,50,6000,350,6000);
		this.destino = CIDADE.LISBOA;
	}
	
	public CIDADE destino() { return destino; }
	
	public void mudarDestino(CIDADE c) {
		this.destino = c;
	}
	
	public boolean habilitado() {
		return this.condutor().carta().tipo().equals(cartaNecessaria);
	}

	@Override
	public String toString() {
		return "PesadoPassageiro [destino=" + destino + ", cartaNecessaria=" + cartaNecessaria + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((cartaNecessaria == null) ? 0 : cartaNecessaria.hashCode());
		result = prime * result + ((destino == null) ? 0 : destino.hashCode());
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
		PesadoPassageiro other = (PesadoPassageiro) obj;
		if (cartaNecessaria == null) {
			if (other.cartaNecessaria != null)
				return false;
		} else if (!cartaNecessaria.equals(other.cartaNecessaria))
			return false;
		if (destino != other.destino)
			return false;
		return true;
	}
	
}
