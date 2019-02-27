package aula11.ex1.e;

import java.io.IOException;

public class NumWords {

	public static void main(String[] args) throws IOException {
		WordCounter inf = new WordCounter();
		System.out.println("Numero de palavras diferentes no ficheiro: " + inf.countDifWords("Cinderela.txt"));
		inf.readFile("Cinderela.txt");
		inf.printMap();
	}

}
