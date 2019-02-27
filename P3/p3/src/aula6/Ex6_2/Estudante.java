package aula6.Ex6_2;

public class Estudante extends Cliente{
	private int nMec;
	private String curso;

	public Estudante(String nome, int cc, Data dataNasc, String curso) {
		super(nome, cc, dataNasc);
		this.curso = curso;
	}
	public Estudante(String nome, int cc, Data dataNasc) {
		super(nome, cc, dataNasc);
		this.curso = "MIECT";
	}
	
	public int nMec() { return nMec; }
	public String curso() { return curso; }
	
	public String toString() {
		return super.toString() + String.format("| %d | %s ", nMec, curso);
	}
}
