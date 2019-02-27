package aula6.Ex6_2;

public class Bolseiro extends Estudante{
	protected int bolsa;
	
	public Bolseiro(String nome, int cc, Data dataNasc, String curso, int bolsa) {
		super(nome, cc, dataNasc, curso);
		this.bolsa = bolsa;
	}
	
	public Bolseiro(String nome, int cc, Data dataNasc) {
		super(nome, cc, dataNasc);
		this.bolsa = 0;
	}
	
	public void setBolsa(int bolsa) { this.bolsa = bolsa; }
	public int bolsa() { return bolsa; }
	
	@Override
	public String toString() {
		return super.toString() + ", Bolsa: " + bolsa + "€";
	}
}
