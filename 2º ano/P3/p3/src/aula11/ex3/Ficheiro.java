package aula11.ex3;
import java.io.*;

public class Ficheiro {
	
	public void loadFromFile(String filename, Ementa ementa) throws IOException, FileNotFoundException {
		FileInputStream fis = new FileInputStream(new File(filename));
		ObjectInputStream ois = new ObjectInputStream(fis);
		
		try {
			ementa = (Ementa) ois.readObject();
		}catch(ClassNotFoundException e){
			ois.close();
			fis.close();
			throw new IllegalArgumentException("Nao existe nenhuma ementa no ficheiro!");
		}
		ois.close();
		fis.close();
	}
	
	public void saveToFile(String filename, Ementa ementa) throws IOException, FileNotFoundException {
		FileOutputStream fos = new FileOutputStream(new File(filename));
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		
		oos.writeObject(ementa);
		
		oos.close();
		fos.close();
	}
}
