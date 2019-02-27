package aula7.Ex1;
import java.io.*;

public class Main {

	public static void main(String[] args) throws IOException {
		Aeroporto aeroporto = new Aeroporto("companhias.txt","voos.txt");
		aeroporto.printAeroporto();
		
		System.out.println("##########################################################");
		
		aeroporto.writeToFile("Infopublico.txt");
		
		aeroporto.writeToBinaryFile("Infopublico.bin");
		aeroporto.readFromBinaryFile("Infopublico.bin");
		//aeroporto.printNChegadas();
		
	}

}
