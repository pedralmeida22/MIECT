public class Tarefa {
	private Data inicio, fim;
	private String texto;
	
	public Tarefa(Data ini, Data fim, String tex){
		assert (fim.compareTo(ini) <= 0) : "Data fim anterior a data inicio";
		assert ini != null : "Data inicio should not be null";
		assert fim != null : "Data fim should not be null";
		
		this.inicio = ini;
		this.fim = fim;
		assert (tex.length() == 0) : "Tarefa sem nome!";
		this.texto = tex;
	}
	
	//getters
	public Data inicio(){
		return inicio;
	}
	public Data fim(){
		return fim;
	}
	public String texto(){
		return texto;
	}
	
	public String toString(){
		return String.format("%s --- %s: %s", inicio.toString(), fim.toString(), texto);
	}
	public boolean interseta(Tarefa t){
		if(inicio.compareTo(t.fim()) <= 0 && inicio.compareTo(t.inicio()) >= 0){
			return true;
		}else if(fim.compareTo(t.inicio()) >= 0 && fim.compareTo(t.fim()) <= 0){
			return true;
		}else if(inicio.compareTo(t.inicio()) <= 0 && fim.compareTo(t.fim()) >= 0){
			return true;
		}else return false;
	}
}

