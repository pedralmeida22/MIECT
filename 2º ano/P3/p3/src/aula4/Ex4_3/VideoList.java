package aula4.Ex4_3;
import java.util.*;

public class VideoList {
	private List<Video> videos = new ArrayList<>();
	
	public void addVideo(Video v) {
		videos.add(v);
	}
	public void removeVideo(Video v) {
		videos.remove(v);
	}
	public Video getVideo(int id) {
		for(Video v : videosToArray()) {
			if(v.id() == id) {
				return v;
			}
		}
		throw new IllegalArgumentException();
	}
	public int size() { return videos.size(); }
	
	public Video[] videosToArray() { return videos.toArray(new Video[0]); }
}
