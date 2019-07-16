package aula3;
import java.util.*;

public class Cliente {
	private String nome;
    private int cc;
    private Data dataNasc;
    private final int nSocio;
    public int lastSocio = 0;
    private List<Video> watchedVideos;
	private List<Video> videoHistory;
    
    public Cliente(String nome, int cc, Data dataNasc) {
    	this.nome = nome;
    	this.cc = cc;
    	this.dataNasc = dataNasc;
    	lastSocio++;
    	nSocio = lastSocio;
    	watchedVideos = new ArrayList<>();
		videoHistory = new ArrayList<>();
    }
    
    public String nome() {
    	return nome;
    }
    public int cc() {
    	return cc;
    }
    public Data dataNasc() {
    	return dataNasc;
    }
    public int nSocio() {
    	return nSocio;
    }
    public String toString(){
		return String.format("%s | %d | %s | %d |", nome, cc, dataNasc, nSocio);
    }
    
    public void requisitarVideo(Video v) {
    	watchedVideos.add(v);
    	videoHistory.add(v);
    }
    
    public void devolverVideo(Video v) {
    	watchedVideos.remove(v);
    }
    
    public int numVideosRequisitados() {
    	return watchedVideos.size();
    }
    
    public Video[] watchedVideosToArray() { return watchedVideos.toArray(new Video[0]); }
	public Video[] historyVideosToArray() { return videoHistory.toArray(new Video[0]); }
}
