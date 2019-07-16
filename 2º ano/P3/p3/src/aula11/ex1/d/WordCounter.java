package aula11.ex1.d;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;


public class WordCounter {
	private TreeMap<String, Integer> map;

	public WordCounter(String filename) throws IOException {
		this.map = new TreeMap<String, Integer>(new Comparator<String>()
				{
					public int compare(String s1, String s2) {
						return s1.compareTo(s2);
					}
				});
		readFile(filename);
		printMap();
	}

	public void readFile(String filename) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("src/aula11/ex1/c/" + filename));
		for (String line : lines) {
			for (String word : line.split(" ")) {
				if(map.containsKey(word)) {
					int temp = map.get(word);
					map.put(word, ++temp);
					
				}
				else {
					map.put(word, 1);
				}
			}
		}
	}
	
	public void printMap() {
		Iterator<String> it = map.keySet().iterator();
		while(it.hasNext()) {
			String key = it.next();
			String value = map.get(key).toString();
			System.out.printf("%14s : %2s %n", key, value);
		}
	}
}
