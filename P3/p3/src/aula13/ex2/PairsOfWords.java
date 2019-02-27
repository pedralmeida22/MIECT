package aula13.ex2;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

public class PairsOfWords {
	private Map<String, Map<String, Integer>> map = new TreeMap<>();
	
	public List<String> readFile(String filename) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("src/aula13/ex2/" + filename));
		
		return lines.stream().flatMap(x -> Arrays.stream(x.split("[ |”|“|‘|’|\t|\n|\\.|,|:|'|\"|;|\\?|!|-|\\*|\\{|}|=|\\+|&|/|\\(|\\)|[|]|]")))
				     .filter(x -> x.length() >= 3)
				     .map(x -> x.toLowerCase())
					 .collect(Collectors.toList());
	}
	
	public void toMap(List<String> s) {
		for(int i = 0; i < s.size() - 1; i++) {
			String p1 = s.get(i);
			String p2 = s.get(i+1);
			if(map.containsKey(p1)) {
				Map<String, Integer> m1 = map.get(p1);
				if(m1.containsKey(p2)) {
					m1.put(p2, m1.get(p2)+1);
				}else {
					m1.put(p2, 1);
				}
			}else {
				Map<String, Integer> m2 = new TreeMap<>();
				m2.put(p2, 1);
				map.put(p1, m2);
			}
		}
	}
	
	
	
	@Override
	public String toString() {
		return map.keySet().stream().map(x -> x.concat("=").concat(map.get(x).toString())).collect(Collectors.joining("\n"));
	}

	public static void main(String[] args) throws IOException {
		PairsOfWords p = new PairsOfWords();
		p.toMap(p.readFile("Policarpo.txt"));
		System.out.println(p.toString());
		PrintWriter pw = new PrintWriter("src/aula13/ex2/output.txt");
		pw.write(p.toString());
		pw.close();
	}
}
