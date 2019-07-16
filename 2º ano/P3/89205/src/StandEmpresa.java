import java.util.*;

public class StandEmpresa extends Stand {
	private List<Participante> participantes;

	StandEmpresa(String c, String n, Participante p) {
		super(c, n, p);
		this.participantes = new ArrayList<>();
		participantes.add(p);
	}

	StandEmpresa(String c, String n, Participante p, List<Participante> list) {
		super(c, n, p);
		this.participantes = list;
	}
	
	public List<Participante> membros() {
		return participantes;
	}
	
	public boolean add(Participante p) {
		return participantes.add(p);
	}

}
