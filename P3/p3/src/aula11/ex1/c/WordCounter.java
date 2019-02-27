package aula11.ex1.c;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;


public class WordCounter {
	private HashMap<String, Integer> map;

	public WordCounter(String filename) throws IOException {
		map = new HashMap<>();
		readFile(filename);
		printMap();
	}

	public void readFile(String filename) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("src/aula11/ex1/c/" + filename));
		for (String line : lines) {
			for (String word : line.split(" ")) {
				if(map.containsKey(word)) {
					int temp = (int) map.get(word);
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
