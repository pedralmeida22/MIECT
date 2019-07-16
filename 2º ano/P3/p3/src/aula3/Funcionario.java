package aula3;

public class Funcionario extends Pessoa {
	private int nFunc;
	private int nFiscal;

	public Funcionario(String nome, int cc, Data dataNasc, int nFunc, int nFiscal) {
		super(nome, cc, dataNasc);
		this.nFunc = nFunc;
		this.nFiscal = nFiscal;
	}
	
	public int nFunc() { return nFunc; }
	public int nFiscal() { return nFiscal; }
	
	public String toString() {
		return super.toString() + String.format("| %d | %d ", nFunc, nFiscal);
	}
}
