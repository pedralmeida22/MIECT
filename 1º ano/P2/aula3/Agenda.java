public class Agenda {
	private Tarefa[] tarefas;
	private  int nElem;
	
	public Agenda(int n){
		n = n > 1000 || n < 0 ? 1000: n;
		tarefas = new Tarefa[n];
		nElem = 0;
	} 
	
	public void novaTarefa(Tarefa tarefa){
		tarefas[nElem] = tarefa;
		nElem++;
		sort();
	}
	public void escreve(){
		for(int i = 0; i < nElem; i++){
			System.out.println(tarefas[i].toString());
		}
	}
	public Agenda filtra(Data d1, Data d2){
		Agenda nova = new Agenda(nElem);
		
		Tarefa temp = new Tarefa(d1, d2, "Temp");
		
		for(int i = 0; i < nElem; i++){
			if(temp.interseta(tarefas[i])){
				nova.novaTarefa(tarefas[i]);
			}
		}
		return nova;
	}
	public void sort(){
		for (int i = 0; i < nElem-1; i++) {
			for (int j = i+1; j < nElem; j++) {
				if (tarefas[j].inicio().compareTo(tarefas[i].inicio()) < 0)  {
					Tarefa tmp = tarefas[j];
					tarefas[j] = tarefas[i];
					tarefas[i] = tmp;
				}
			}
		}
	}			
}

