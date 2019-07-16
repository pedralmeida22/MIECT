package aula3;

public class Motociclo extends Veiculo {
	private final TIPOMOTO tipo;
	public final String cartaNecessaria = "A";
	
	public Motociclo(Condutor c, int lotacao, int cilindrada, int potencia, int pesoBruto, TIPOMOTO t) {
		super(c, lotacao, cilindrada, potencia, pesoBruto);
		this.tipo = t;
	}
	
	public Motociclo(Condutor c, TIPOMOTO t) {
		super(c, 2, 1200, 80, 250);
		this.tipo = t;
	}
	
	public Motociclo(Condutor c) {
		super(c, 2, 1200, 80, 250);
		this.tipo = TIPOMOTO.TOURING;
	}
	
	public TIPOMOTO tipo() { return tipo; }
	
	public boolean habilitado() {
		return this.condutor().carta().tipo().equals(cartaNecessaria);
	}

	@Override
	public String toString() {
		return "Motociclo [tipo=" + tipo + ", cartaNecessaria=" + cartaNecessaria + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((cartaNecessaria == null) ? 0 : cartaNecessaria.hashCode());
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
		Motociclo other = (Motociclo) obj;
		if (cartaNecessaria == null) {
			if (other.cartaNecessaria != null)
				return false;
		} else if (!cartaNecessaria.equals(other.cartaNecessaria))
			return false;
		if (tipo != other.tipo)
			return false;
		return true;
	}
	
}
