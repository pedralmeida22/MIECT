package aula3;

public class Video {
	private final int id;
	public static int lastId = 0;
	private final String title;
	private final String category;
	private final String age;
	private boolean available;
	private int numClients;
	private int rating;
	private int averageRating;
	
	Video(String title, String age, String category){
		if(!(validCategory(category) && validAge(age))) throw new IllegalArgumentException();
		this.title = title;
		this.category = category;
		this.age = age;
		id = lastId++;
		this.available = true;
		this.numClients = 0;
		this.rating = 0;
		this.averageRating = 0;
	}
	
	public int id() { return id; }
	public String title() { return title; }
	public String category() { return category; }
	public String age() { return age; }
	public boolean available() { return available; }
	public int numClients() { return numClients; }
	public int averageRating() { return averageRating; }
	public int rating() { return rating; }
	
	private boolean validCategory(String s) {
		return s.equals("action") || s.equals("comedy") || s.equals("children") || s.equals("drama");
	}
	private boolean validAge(String s) {
		return s.equals("ALL") || s.equals("M6") || s.equals("M12") || s.equals("M16") || s.equals("M18");
	}
	
	public String toString() {
		return String.format("    %s    |    %s    |    %s   |   %d   |   %d   |    %d   ", title, category, age, id, rating, averageRating);
	}
	public void requisitarVideo() {
		available = false;
		numClients++;
	}
	
	public void devolverVideo(int r) {
		available = true;
		addRating(r);
	}
	
	private void addRating(int r) {
		rating += r;
		averageRating = Math.min(Math.max((int)Math.round((double)rating/(double)numClients), 0), 10);
	}
}
