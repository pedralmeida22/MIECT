package aula5.Ex5_2c;
import java.util.*;

public class ListaVeiculos {
	private List<Veiculo> veiculos;
	
	public ListaVeiculos() {
		this.veiculos = new ArrayList<Veiculo>();
	}
	
	public boolean addVeiculo(Veiculo v) {
		return veiculos.add(v);
	}
	
	public boolean removeVeiculo(Veiculo v) {
		return veiculos.remove(v);
	}
	
	public Veiculo[] getVeiculos() {
		return veiculos.toArray(new Veiculo[0]);
	}

	@Override
	public String toString() {
		return "ListaVeiculos [veiculos=" + veiculos + "]";
	}
	
	
}
