package aula11.ex3;
import java.util.*;

public class Prato implements Comparable<Prato> {
	private final String nome;
	private LinkedList<Alimento> alimentos;
	private double pesoTotal;
	private double calorias;
	private double proteina;
	
	public Prato(String n) {
		this.nome = n;
		alimentos = new LinkedList<>();
		this.pesoTotal = 0;
		this.proteina = 0;
		this.calorias = 0;
	}
	
	public boolean addIngrediente(Alimento alimento) {
		if(alimento == null) return false;
		alimentos.add(alimento);
		pesoTotal += alimento.getPeso();
		proteina += alimento.getProteinas();
		calorias += alimento.getCalorias();
		return true;
	}
	
	public boolean removeIngrediente(Alimento alimento) {
		if(alimento == null) return false;
		pesoTotal -= alimento.getPeso();
		proteina += alimento.getProteinas();
		calorias += alimento.getCalorias();
		
		return alimentos.remove(alimento);
	}
	
	public int numAlimentos() {
		return alimentos.size();
	}

	public String getNome() {
		return nome;
	}

	public double getPesoTotal() {
		return pesoTotal;
	}

	public double getCalorias() {
		return calorias;
	}

	public double getProteina() {
		return proteina;
	}
	
	public Alimento[] alimentosToArray() {
		return alimentos.toArray(new Alimento[0]);
	}
	
	@Override
	public int compareTo(Prato prato) {
		return (int)(this.getCalorias() - prato.getCalorias());
	}

	@Override
	public String toString() {
		return "Prato: nome=" + nome + "numAlimentos=" + numAlimentos() + ", pesoTotal=" + pesoTotal + ", calorias="
				+ calorias + ", proteina=" + proteina;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((alimentos == null) ? 0 : alimentos.hashCode());
		long temp;
		temp = Double.doubleToLongBits(calorias);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		temp = Double.doubleToLongBits(pesoTotal);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(proteina);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Prato other = (Prato) obj;
		if (alimentos == null) {
			if (other.alimentos != null)
				return false;
		} else if (!alimentos.equals(other.alimentos))
			return false;
		if (Double.doubleToLongBits(calorias) != Double.doubleToLongBits(other.calorias))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (Double.doubleToLongBits(pesoTotal) != Double.doubleToLongBits(other.pesoTotal))
			return false;
		if (Double.doubleToLongBits(proteina) != Double.doubleToLongBits(other.proteina))
			return false;
		return true;
	}
	
	
}
