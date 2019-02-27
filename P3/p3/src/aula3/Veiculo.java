package aula3;

public class Veiculo {
	private Condutor condutor;
	private final int lotacao;
	private final int cilindrada;
	private final int potencia;
	private final int pesoBruto;
	
	public Veiculo(Condutor c, int lotacao, int cilindrada, int potencia, int pesoBruto) {
		this.condutor = c;
		this.lotacao = lotacao;
		this.cilindrada = cilindrada;
		this.potencia = potencia;
		this.pesoBruto = pesoBruto;
	}
	
	public Condutor condutor() { return condutor; }
	public int lotacao() { return lotacao; }
	public int cilindrada() { return cilindrada; }
	public int potencia() { return potencia; }
	public int pesoBruto() { return pesoBruto; }

	@Override
	public String toString() {
		return "Veiculo [condutor=" + condutor + ", lotacao=" + lotacao + ", cilindrada=" + cilindrada + ", potencia="
				+ potencia + ", pesoBruto=" + pesoBruto + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + cilindrada;
		result = prime * result + ((condutor == null) ? 0 : condutor.hashCode());
		result = prime * result + lotacao;
		result = prime * result + pesoBruto;
		result = prime * result + potencia;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Veiculo other = (Veiculo) obj;
		if (cilindrada != other.cilindrada)
			return false;
		if (condutor == null) {
			if (other.condutor != null)
				return false;
		} else if (!condutor.equals(other.condutor))
			return false;
		if (lotacao != other.lotacao)
			return false;
		if (pesoBruto != other.pesoBruto)
			return false;
		if (potencia != other.potencia)
			return false;
		return true;
	}
	
	
}
