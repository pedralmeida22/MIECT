package aula3;

public class Bolseiro extends Estudante{
	protected int bolsa;
	
	public Bolseiro(String nome, int cc, Data dataNasc, int nMec, String curso, int bolsa) {
		super(nome, cc, dataNasc, nMec, curso);
		this.bolsa = bolsa;
	}
	
	public void setBolsa(int bolsa) { this.bolsa = bolsa; }
	public int bolsa() { return bolsa; }
	
	@Override
	public String toString() {
		return super.toString() + ", Bolsa: " + bolsa;
	}
}
