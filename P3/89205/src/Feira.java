import java.util.*;
import java.util.stream.Collectors;

public class Feira {
	private String nome;
	private String local;
	private Set<Stand> stands;
	private List<Visitante> visitantes;
	
	Feira(String n, String l){
		this.nome = n;
		this.local = l;
		stands = new HashSet<>();
		visitantes = new ArrayList<>();
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public boolean add(Visitante visitante) {
		return visitantes.add(visitante);
	}

	public boolean add(Stand stand) {
		return stands.add(stand);
	}

	public String emailsDosResponsaveis() {
		String s = "";
		s += stands.stream().map(x -> x.mail()).collect(Collectors.toList());
		return s;
	}

	public String getServico(Servico ser) {
		List<Stand> st = new ArrayList<>();
		for(Stand s : stands) {
			if(s instanceof StandServicos) {
				if(((StandServicos) s).getServiso() == ser) {
					st.add(s);
				}
			}
		}
		String str = "";
		for(Stand s : st) {
			str += s.toString();
		}
		return str;
	}
	/*
	public List<Stand> getStandsOrderedByCodigo() {
		Collections.sort();
	}
	*/

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((local == null) ? 0 : local.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((stands == null) ? 0 : stands.hashCode());
		result = prime * result + ((visitantes == null) ? 0 : visitantes.hashCode());
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
		Feira other = (Feira) obj;
		if (local == null) {
			if (other.local != null)
				return false;
		} else if (!local.equals(other.local))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (stands == null) {
			if (other.stands != null)
				return false;
		} else if (!stands.equals(other.stands))
			return false;
		if (visitantes == null) {
			if (other.visitantes != null)
				return false;
		} else if (!visitantes.equals(other.visitantes))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Feira " + nome + " - Total de Expositores: " + stands.size() + "; Total de visitantes: " + visitantes.size();
	}	
	
	
}
