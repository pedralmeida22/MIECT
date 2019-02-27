public class Tarefa {
	private Data inicio, fim;
	private String texto;
	
	public Tarefa(Data ini, Data fim, String tex){
		this.inicio = ini;
		this.fim = fim;
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

