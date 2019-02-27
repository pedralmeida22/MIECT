package aula13.ex1.parte1;

public class Localidade {
	private final String nome;
	private int populacao;
	private TipoLocalidade tipo;
	
	Localidade(String n, int p, TipoLocalidade t) {
		this.nome = n;
		this.populacao = p;
		this.tipo = t;
	}

	public int getPopulacao() {
		return populacao;
	}

	public TipoLocalidade getTipo() {
		return tipo;
	}

	public void setTipo(TipoLocalidade tipo) {
		this.tipo = tipo;
	}

	public String getNome() {
		return nome;
	}

	@Override
	public String toString() {
		return "Localidade: " + nome + ", " + populacao + ", " + tipo;
	}
	
	
}
