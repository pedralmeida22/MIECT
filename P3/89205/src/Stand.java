
public abstract class Stand implements Expositor {
	private String codigo;
	private String nome;
	private Participante res;
	
	Stand(String c, String n, Participante p){
		this.codigo = c;
		this.nome = n;
		this.res = p;
	}
	
	@Override
	public String codigo() {
		return codigo;
	}



	@Override
	public Participante responsavel() {
		return res;
	}
	
	public String mail() {
		return res.getEmail();
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
		Stand other = (Stand) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Stand [codigo=" + codigo + ", nome=" + nome + ", resp= " + res.toString() + "]";
	}
	
	
}
