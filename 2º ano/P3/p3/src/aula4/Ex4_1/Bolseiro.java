package aula4.Ex4_1;

public class Bolseiro extends Estudante{
	protected int bolsa;
	
	public Bolseiro(String nome, int cc, Data dataNasc, String curso, int bolsa) {
		super(nome, cc, dataNasc, curso);
		this.bolsa = bolsa;
	}
	
	public Bolseiro(String nome, int cc, Data dataNasc, String curso) {
		super(nome, cc, dataNasc, curso);
		this.bolsa = 0;
	}
	
	public void setBolsa(int bolsa) { this.bolsa = bolsa; }
	public int bolsa() { return bolsa; }
	
	@Override
	public String toString() {
		return super.toString() + ", Bolsa: " + bolsa + "€";
	}
}
