package aula1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

public class ex6 {
	static Map<String, String> map = new HashMap<>();
	public static void main(String[] args) {
		readTranslationFile("bloco1/dic1.txt");
		translateFile("bloco1/dic2.txt");
	}
	
	public static void readTranslationFile(String filepath) {
		try {
			List<String> lines = Files.readAllLines(Paths.get(filepath));
			//lines.stream().forEach(System.out::println);
			
			for(String line : lines) {
				String[] split = line.split(" ", 2);
				if(!split[1].isEmpty()) {
					map.put(split[0], split[1].trim());
				}
			}
			//System.out.println(map.toString());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void translateFile(String filepath) {
		try {
			List<String> lines = Files.readAllLines(Paths.get(filepath));
			
			for(String line : lines) {
				String[] split = line.split(" ");
				for(String part : split) {
					if(map.containsKey(part)) {
						System.out.print(map.get(part) + " ");
					}
					else {
						System.out.print(part + " ");
					}
				}
				System.out.println();
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
