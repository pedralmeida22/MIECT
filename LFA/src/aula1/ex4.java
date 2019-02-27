package aula1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;

public class ex4 {

	static Map<String, Integer> mapp = new HashMap<>();
 	public static void main(String[] args) throws IOException {
		loadMap(readFile());
		
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.println("----Number translator----");
			System.out.println("Introduza uma frase: ");
			String[] input = sc.nextLine().split(" ");
			
			int sum = 0;
			int buffer = 0;
			for(String i : input) {
				if(mapp.containsKey(i)) {
					int num = mapp.get(i);
					
					if(buffer == 0) {
						buffer += num;
					}else if(num > buffer) {
						buffer *= num;
					}else {
						sum += buffer;
						buffer = num;
					}
				}
			}
			sum += buffer;
			System.out.println(sum);
			System.out.println();
		}
	}
	
	public static String[] readFile() throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("bloco1/numbers.txt"));
		//lines.stream().forEach(System.out::println);
		return Arrays.stream(lines.stream().collect(Collectors.joining(" "))
				.split("-| |\n"))
				.filter(x -> x.length() > 0)
				.collect(Collectors.toList()).toArray(new String[0]);
	}
	
	public static void loadMap(String[] s) {
		for(int i = 0; i < s.length-1; i = i + 2) {
			String value = s[i];
			String key = s[i+1];
			mapp.put(key, Integer.parseInt(value));
		}
	}

}
