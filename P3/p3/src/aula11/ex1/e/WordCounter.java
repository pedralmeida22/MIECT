package aula11.ex1.e;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

public class WordCounter {
	private TreeMap<String, Integer> map;
	
	public WordCounter() throws IOException {
		map = new TreeMap<String, Integer>(new Comparator<String>()
		{
			public int compare(String s1, String s2) {
				return s1.compareTo(s2);
			}
		});
	}
	
	public int countDifWords(String filename) throws IOException {
		Set<String> difWords = new HashSet<String>();
		List<String> lines = Files.readAllLines(Paths.get("src/aula11/ex1/c/" + filename));
		lines.stream().flatMap(x -> Arrays.stream(x.split(" ")))
					  .forEach(x -> difWords.add(x));
		
		return difWords.size();
	}
	
	public void readFile(String filename) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("src/aula11/ex1/c/" + filename));
		lines.stream().flatMap(x -> Arrays.stream(x.split(" ")))
				.forEach(x -> {
					if(map.containsKey(x)) {
						int temp = map.get(x);
						map.put(x, ++temp);
					}
					else {
						map.put(x, 1);
					}
				});
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
