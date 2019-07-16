package aula7.Ex1;

public class Voo {
	private final Time partida;
	private final String codVoo;
	private final String origem;
	private Companhia companhia;
	private Time atraso;
	private Time previsao;
	
	public Voo(Time partida, String codVoo,String origem, Companhia companhia, Time atraso) {
		if(partida == null || origem == null || companhia == null || atraso == null) throw new NullPointerException("Null element present");
		this.partida = partida;
		this.codVoo = codVoo;
		this.origem = origem;
		this.companhia = companhia;
		this.atraso = atraso;
		this.previsao = partida.addHora(atraso);
	}

	public Companhia getCompanhia() {
		return companhia;
	}

	public Time getAtraso() {
		return atraso;
	}

	public Time getPartida() {
		return partida;
	}

	public String getCodVoo() {
		return codVoo;
	}

	public String getOrigem() {
		return origem;
	}
	public Time getPrevisao() {
		return previsao;
	}

	@Override
	public String toString() {
		return String.format("%s\t%-10s\t%-18s\t%-20s\t%-5s\t%s", partida.toString(), codVoo, companhia, origem, atraso.horaZero() ? "" : atraso.toString(), atraso.horaZero() ? "" : previsao.toString());
	}	
	
}
