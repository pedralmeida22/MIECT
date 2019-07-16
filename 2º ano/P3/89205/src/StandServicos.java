
public class StandServicos extends Stand {
	private Servico servico;
	
	StandServicos(String c, String n, Participante p, Servico t){
		super(c, n, p);
		this.servico = t;
	}

	public Servico getServiso() {
		return servico;
	}

	public void setServiso(Servico servico) {
		this.servico = servico;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((servico == null) ? 0 : servico.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		StandServicos other = (StandServicos) obj;
		if (servico != other.servico)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "StandServicos [servico=" + servico + "] " + super.toString();
	}
	
	
	
}
