package aula7.Ex1;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.io.*;

public class Aeroporto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private List<Voo> voos;
	private HashMap<String, Companhia> map;
	
	public Aeroporto(String companhiasFile, String infoFile) throws IOException{
		voos = new ArrayList<>();
		map = new HashMap<>();
		
		List<String> companhias = Files.readAllLines(Paths.get("src/aula7/Ex1/" + companhiasFile));
		List<String> info = Files.readAllLines(Paths.get("src/aula7/Ex1/" + infoFile));
		
		//companhias
		for(int i = 0; i < companhias.size(); i++) {
			if(i == 0) continue;
			String[] split = companhias.get(i).split("\t");
			map.put(split[0], new Companhia(split[0], split[1]));
		}
		
		//info
		for(int i = 0; i < info.size(); i++) {
			if(i == 0) continue;
			String[] split = info.get(i).split("\t");
			Companhia companhia = map.get(split[1].substring(0, 2));
			if(companhia == null) continue;
			Time atraso = split.length < 4 ? new Time() : new  Time(split[3]);
			addVoo(new Voo(new Time(split[0]), split[1], split[2], companhia, atraso));
		}		
	}
	
	public boolean addVoo(Voo voo) {
		return voos.add(voo);
	}
	
	public void printAeroporto() {
		System.out.println("Hora\tVoo\tCompanhia\tOrigem\tAtraso\tPrevisao");
		for(Voo i : voos.toArray(new Voo[0])) {
			System.out.println(i);
		}
	}
	
	private String voosToString() {
		String str = "";
		for(Voo v : voos.toArray(new Voo[0])) {
			str = str + v + "\n";
		}
		return str;
	}
	
	public void writeToFile(String filename) throws IOException {
		Files.write(Paths.get("src/aula7/Ex1/" + filename), voosToString().getBytes());
		System.out.println("Escrito em ficheiro txt com sucesso!");
	}
	
	public void writeToBinaryFile(String filename) throws IOException {
		RandomAccessFile file = new RandomAccessFile("src/aula7/Ex1/" + filename, "rw");
		file.write(voosToString().getBytes());
		file.close();
		System.out.println("Escrito em ficheiro binario com sucesso!");
	}
	
	public void readFromBinaryFile(String filename) throws IOException {
		RandomAccessFile file = new RandomAccessFile("src/aula7/Ex1/" + filename, "rw");
		byte[] info = new byte[(int) file.length()];
		file.readFully(info);
		file.close();
		System.out.println(new String(info));
		
		System.out.println("Informacao lida do ficheiro binario com sucesso!");
	}
	
	// Tentativa da alinea d)
	/*private String[] origemToArray() throws IOException {
		List<String> cidades = new ArrayList<>();
		List<String> info = Files.readAllLines(Paths.get("src/aula7/Ex1/voos.txt"));
		for(int i = 0; i < info.size(); i++) {
			String[] split = info.get(i).split("\t");
			cidades.add(split[2]);
		}
		return cidades.toArray(new String[0]);
	}
	
	public void printNChegadas() throws IOException {
		HashMap<String, Integer> chegadas = new HashMap<>();
		String[] cidades = origemToArray();
		for(String i: cidades) {
			int value = chegadas.get(i);
			chegadas.put(i, value++);
		}
		
		String[] cidadesOrdenadas = chegadas.keySet().toArray(new String[0]);
		Arrays.sort(cidadesOrdenadas);
		
		File file = new File("src/aula7/Ex1/cidades.txt");
		PrintWriter pwf = new PrintWriter(file);
		
		pwf.print("Cidade\tVoos\n");
		for (String i : cidadesOrdenadas) {
			pwf.write(i + "\t" + chegadas.get(i) + "\n");
		}
		pwf.close();
		System.out.println("Informacao guardada no ficheiro cidades.txt com sucesso!!");
		
	}*/
	
}
