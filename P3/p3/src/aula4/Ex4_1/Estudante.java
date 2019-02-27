package aula4.Ex4_1;

public class Estudante extends Pessoa{
	private final int nMec;
	private static int mecAtual = 100;
	private String curso;

	public Estudante(String nome, int cc, Data dataNasc, String curso) {
		super(nome, cc, dataNasc);
		this.nMec = mecAtual;
		mecAtual++;
		this.curso = curso;
	}
	
	public int nMec() { return nMec; }
	public String curso() { return curso; }

	@Override
	public String toString() {
		return super.toString() + ", nMec=" + nMec + ", curso:" + curso + ";";
	}
	
	
}
