package aula5.Ex5_2b;

public class Moto extends Motorizado {
	private TIPOMOTO tipo;
	
	public Moto(int ano, Cor c, int r, int cil, int mv, int p, double consumo, COMBUSTIVEL comb, TIPOMOTO t) {
		super(ano, c, r, cil, mv, p, consumo, comb);
		this.tipo = t;
	}
	
	public Moto(int ano, Cor c, int r, int cil, int mv, int p, double consumo) {
		super(ano, c, r, cil, mv, p, consumo);
		this.tipo = TIPOMOTO.TOURING;
	}
	
	public TIPOMOTO tipo() { return tipo; }
	public void changeTipo(TIPOMOTO t) { 
		this.tipo = t;
	}
}
