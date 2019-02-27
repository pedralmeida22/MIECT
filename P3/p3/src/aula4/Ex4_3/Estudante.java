package aula4.Ex4_3;

public class Estudante extends Cliente{
	private int nMec;
	private String curso;

	public Estudante(String nome, int cc, Data dataNasc, int nMec, String curso) {
		super(nome, cc, dataNasc);
		this.nMec = nMec;
		this.curso = curso;
	}
	
	public int nMec() { return nMec; }
	public String curso() { return curso; }
	
	public String toString() {
		return super.toString() + String.format("| %d | %s ", nMec, curso);
	}
}
