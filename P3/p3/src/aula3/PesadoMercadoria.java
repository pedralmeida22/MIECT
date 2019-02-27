package aula3;

public class PesadoMercadoria extends Veiculo {
	private MERCADORIA mercadoria;
	public final String cartaNecessaria = "C";
	
	public PesadoMercadoria(Condutor c, int lotacao, int cilindrada, int potencia, int pesoBruto, MERCADORIA m) {
		super(c, lotacao, cilindrada, potencia, pesoBruto);
		this.mercadoria = m;
	}
	
	public PesadoMercadoria(Condutor c, MERCADORIA m) {
		super(c, 3, 7200, 500, 8000);
		this.mercadoria = m;
	}
	
	public PesadoMercadoria(Condutor c) {
		super(c, 3, 7200, 500, 8000);
		mercadoria = MERCADORIA.EMPTY;
	}
	
	public MERCADORIA mercadoria() { return mercadoria; }
	
	public void carregarMercadoria(MERCADORIA m) {
		if(!vazio()) System.err.println("O veiculo ja tem carga!!");
		this.mercadoria = m;
	}
	
	public void descarregarMercadoria() {
		this.mercadoria = MERCADORIA.EMPTY;
	}
	
	private boolean vazio() {
		return this.mercadoria.equals(MERCADORIA.EMPTY);
	}
	
	public boolean habilitado() {
		return this.condutor().carta().tipo().equals(cartaNecessaria);
	}

	@Override
	public String toString() {
		return "PesadoMercadoria [mercadoria=" + mercadoria + ", cartaNecessaria=" + cartaNecessaria + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((cartaNecessaria == null) ? 0 : cartaNecessaria.hashCode());
		result = prime * result + ((mercadoria == null) ? 0 : mercadoria.hashCode());
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
		PesadoMercadoria other = (PesadoMercadoria) obj;
		if (cartaNecessaria == null) {
			if (other.cartaNecessaria != null)
				return false;
		} else if (!cartaNecessaria.equals(other.cartaNecessaria))
			return false;
		if (mercadoria != other.mercadoria)
			return false;
		return true;
	}
	
}
