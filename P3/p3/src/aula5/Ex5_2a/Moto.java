package aula5.Ex5_2a;

public class Moto extends Motorizado {
	private TIPOMOTO tipo;
	
	public Moto(int ano, Cor c, int r, int cil, int mv, TIPOMOTO t) {
		super(ano, c, r, cil, mv);
		this.tipo = t;
	}
	
	public Moto(int ano, Cor c, int r, int cil, int mv) {
		super(ano, c, r, cil, mv);
		this.tipo = TIPOMOTO.TOURING;
	}
	
	public TIPOMOTO tipo() { return tipo; }
	public void changeTipo(TIPOMOTO t) { 
		this.tipo = t;
	}
}
