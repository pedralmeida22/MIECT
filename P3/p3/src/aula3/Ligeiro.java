package aula3;

public class Ligeiro extends Veiculo {
	private COLOR color;
	public final String cartaNecessaria = "B";
	
	public Ligeiro(Condutor condutor, int lotacao, int cilindrada, int potencia, int pesoBruto, COLOR c) {
		super(condutor, lotacao, cilindrada, potencia, pesoBruto);
		this.color = c;
	}
	
	public Ligeiro(Condutor condutor, COLOR c) {
		super(condutor, 5, 1900, 130, 1500);
		this.color = c;
	}
	
	public Ligeiro(Condutor c) {
		super(c, 5, 1900, 130, 1500);
		this.color = COLOR.BRANCO;
	}
	
	public COLOR color() { return color; }
	
	public void changeColor(COLOR c) {
		this.color = c;
	}
	
	public boolean habilitado() {
		return this.condutor().carta().tipo().equals(cartaNecessaria);
	}

	@Override
	public String toString() {
		return "Ligeiro [color=" + color + ", cartaNecessaria=" + cartaNecessaria + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((cartaNecessaria == null) ? 0 : cartaNecessaria.hashCode());
		result = prime * result + ((color == null) ? 0 : color.hashCode());
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
		Ligeiro other = (Ligeiro) obj;
		if (cartaNecessaria == null) {
			if (other.cartaNecessaria != null)
				return false;
		} else if (!cartaNecessaria.equals(other.cartaNecessaria))
			return false;
		if (color != other.color)
			return false;
		return true;
	}
	
}