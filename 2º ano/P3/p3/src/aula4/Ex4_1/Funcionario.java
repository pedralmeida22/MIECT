package aula4.Ex4_1;

public class Funcionario extends Pessoa {
	private final int nFunc;
	private static int nFuncAtual = 500;
	private int nFiscal;

	public Funcionario(String nome, int cc, Data dataNasc, int nFiscal) {
		super(nome, cc, dataNasc);
		this.nFunc = nFuncAtual;
		nFuncAtual++;
		this.nFiscal = nFiscal;
	}
	
	public int nFunc() { return nFunc; }
	public int nFiscal() { return nFiscal; }
	
	public String toString() {
		return super.toString() + String.format("| %d | %d ", nFunc, nFiscal);
	}
}
