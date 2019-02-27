package aula4.Ex4_1;
import java.util.*;

public class Disciplina {
	private final String disciplina;
	private final String aCientifica;
	private final int ects;
	private Funcionario professor;
	private List<Estudante> alunos;
	
	public Disciplina(String disp, String ac, int ects, Funcionario p) {
		this.disciplina = disp;
		this.aCientifica = ac;
		this.ects = ects;
		this.professor = p;
		this.alunos = new ArrayList<>();
	}
	
	public String disciplina() { return disciplina; }
	public String aCientifica() { return aCientifica; }
	public int ects() { return ects; }
	public Funcionario professor() { return professor; }
	
	public boolean addAluno(Estudante est) {
		if(alunos.contains(est)) return false;
		return alunos.add(est);
	}
	
	public boolean delAluno(int Mec) {
		for(Estudante i : getAlunos()) {
			if(i.nMec() == Mec) {
				alunos.remove(i);
				return true;
			}
		}
		return false;
	}
	
	public boolean alunoInscrito(int Mec) {
		for(Estudante i : getAlunos()) {
			if(i.nMec() == Mec)
				return true;
		}
		return false;
	}
	
	public int numAlunos() { return alunos.size();}
	
	public Estudante[] getAlunos() {
		return alunos.toArray(new Estudante[0]);
	}
	
	public Estudante[] getAlunos(String tipo) {
		List<Estudante> bol = new ArrayList<>();
		
		for(Estudante i : getAlunos()) {
			if(i.getClass().toString().contains(tipo))
				bol.add(i);
		}
		
		return bol.toArray(new Estudante[0]);
	}
	
	@Override
	public String toString() {
		return "Disciplina :" + disciplina + " (" + ects + "ects" + ")" + ", da area de " + aCientifica + "\n"
				+ "Responsavel: " + professor.nome + ", CC: " + professor.cc() + ", Nascido a: " + professor.dataNasc() + "\n" +
				"Existem " + numAlunos() + " alunos inscritos na disciplina";
	}
	
}
