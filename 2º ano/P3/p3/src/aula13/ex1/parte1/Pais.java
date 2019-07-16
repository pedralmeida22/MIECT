package aula13.ex1.parte1;

import java.util.*;

public class Pais {
	private final String nome;
	private Localidade capital;
	private List<Regiao> regioes;
	
	Pais(String n, Localidade c) {
		this.nome = n;
		if(c.getTipo().equals(TipoLocalidade.Cidade))
			this.capital = c;
		else
			throw new IllegalArgumentException("Capital invalida");
		regioes = new ArrayList<Regiao>();
	}
	
	Pais(String n) {
		this.nome = n;
		regioes = new ArrayList<Regiao>();
	}

	public String getNome() {
		return nome;
	}

	public Localidade getCapital() {
		return capital;
	}

	public List<Regiao> getRegioes() {
		return regioes;
	}
	
	public boolean addRegiao(Regiao r) {
		return regioes.add(r);
	}
	
	public int populacao() {
		int p = 0;
		for(Regiao r : regioes) {
			p += r.getPopulacao();
		}
		return p;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((capital == null) ? 0 : capital.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((regioes == null) ? 0 : regioes.hashCode());
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
		Pais other = (Pais) obj;
		if (capital == null) {
			if (other.capital != null)
				return false;
		} else if (!capital.equals(other.capital))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (regioes == null) {
			if (other.regioes != null)
				return false;
		} else if (!regioes.equals(other.regioes))
			return false;
		return true;
	}

	@Override
	public String toString() {
		if(this.capital == null)
			return "Pais: " + nome + ", " + this.populacao() +  ", *Indefinida*, " + regioes;
		else
			return "Pais: " + nome + ", " + this.populacao() + ", " + capital + ", " + regioes;
	}
	
	
}
