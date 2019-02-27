package aula4.Ex4_3;

public class VideoClube {
	private ClientList clients = new ClientList();
	private VideoList videos = new VideoList();
	private int movieLimit;
	
	public VideoClube(int N) {
		movieLimit = N;
	}
	
	
	public void addClient(Cliente c) {
		clients.addClient(c);
	}
	
	public void removeClient(int cc) {
		clients.removeClient(clients.getClient(cc));
	}
	
	public void addVideo(String title, String age, String category) {
		videos.addVideo(new Video(title,age,category));
	}
	public void removeVideo(int id) {
		videos.removeVideo(videos.getVideo(id));
	}
	
	public int movieLimit() {
		return movieLimit;
	}
	
	public void printCatalogo() {
		System.out.println("------------------------------------------------------------------------");
		System.out.println("|                         Catalogo de videos                           |");
		System.out.println("------------------------------------------------------------------------");
		System.out.println("|   Nome    |  Categoria  |  Idade  |   ID   | Rating | Average Rating |");
		for(Video v : videos.videosToArray()) {
			System.out.println("| " + v + " |");
		}
	}
	
	public boolean isAvailable(int id) {
		return videos.getVideo(id).available();
	}
	
	public void requisitarVideo(int id, int cc) {
		Video v = videos.getVideo(id);
		Cliente c = clients.getClient(cc);
		
		if(c.numVideosRequisitados() >= movieLimit) {
			System.out.println("O utilizador " + c.nome() + " nao pode requisitar mais videos!");
			return;
		}
		if(!v.available()) {
			System.out.println("Video "+id+" está indisponivel!");
			return;
		}
		v.requisitarVideo();
		c.requisitarVideo(v);
		System.out.println("Video requisitado com sucesso");
	}
	
	public void devolverVideo(int id, int cc, int r) {
		Video v = videos.getVideo(id);
		Cliente c = clients.getClient(cc);
		
		if(v.available()) {
			System.out.println("Video nao requisitado!");
			return;
		}
		v.devolverVideo(r);
		c.devolverVideo(v);
		System.out.println("Video devolvido com sucesso");
	}
	
	public void printHistorico(int cc) {
		Cliente c = clients.getClient(cc);
		
		System.out.println("---------------------------------------------");
		System.out.println("|    Historico de videos de " + c.nome()+ "  |");
		System.out.println("---------------------------------------------");
		
		for(Video v : c.historyVideosToArray()) {
			System.out.println("| " + v + " |");
		}
	}
}
