package aula7.Ex1;
import java.io.*;  
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class TestFicheiro {

	public static void main(String[] args) throws IOException {
		readAllLines("voos.txt");
		readAllLines("companhias.txt");
	}
 
	private static void readAllLines(String filename) {
		Path path = Paths.get("src/aula7/Ex1/" + filename);
		try {
			Files.newBufferedReader(path).lines().forEach(System.out::println);
//Files.newBufferedReader(path).lines().forEach(line -> System.out.println(line));
			
			//List<String> readAllLines = Files.readAllLines(path);
			//readAllLines.stream().forEach(line -> System.out.println(line));
			
			/*for(String lines : readAllLines) {
				System.out.println(lines);
			}*/
		}catch(IOException e) {
			System.out.println("Nao foi possivel ler ficheiro!");
		}
	}

}
