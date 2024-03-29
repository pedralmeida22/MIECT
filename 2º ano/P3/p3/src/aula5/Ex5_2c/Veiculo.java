package aula5.Ex5_2c;

public abstract class Veiculo implements Comparable<Veiculo>{
	private final int ano;
	private Cor cor;
	private final int nRodas;
	private final int  id;
	static int id_atual = 1;
	
	public Veiculo(int ano, Cor c, int nRodas) {
		this.ano = ano;
		this.cor = c;
		if(nRodas <= 0 || nRodas > 8) throw new RuntimeException();
		this.nRodas = nRodas;
		this.id = id_atual++;
	}
	
	public Veiculo(int ano, Cor c) {
		this.ano = ano;
		this.cor = c;
		this.nRodas = 4;
		this.id = id_atual++;
	}
	
	public int ano() { return ano; }
	public Cor cor() { return cor; }
	public int nRodas() { return nRodas; }
	public int id() { return id; }
	
	public void changeColor(Cor c) {
		this.cor = c;
	}
	
	@Override
	public int compareTo(Veiculo v) {
		return (int) (this.ano() - v.ano());
	}

	@Override
	public String toString() {
		return " ano=" + ano + ", cor=" + cor + ", nRodas=" + nRodas + ", id=" + id + ",";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ano;
		result = prime * result + ((cor == null) ? 0 : cor.hashCode());
		result = prime * result + id;
		result = prime * result + nRodas;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Veiculo other = (Veiculo) obj;
		if (ano != other.ano)
			return false;
		if (cor != other.cor)
			return false;
		if (nRodas != other.nRodas)
			return false;
		return true;
	}
	
}
