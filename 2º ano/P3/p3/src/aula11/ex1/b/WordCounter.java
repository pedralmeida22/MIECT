package aula11.ex1.b;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

public class WordCounter {
	private HashSet<String> map;
	
	public WordCounter(String filename) throws IOException {
		this.map = new HashSet<>();
		readFile(filename);
	}
	
	public void readFile(String filename) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("src/aula11/ex1/b/" + filename));
		for(String line : lines) {
			for(String word : line.split(" ")) {
				map.add(word);			
			}
		}
		System.out.println("Numero de palavras diferentes: " + map.size());
	}
	
	
}
