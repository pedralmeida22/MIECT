package preparation.clinica;

import java.io.*;

import preparation.clinica.Cadeira.Tipo;

public class testfile {

	public static void main(String[] args) throws IOException, ClassNotFoundException {
		Clinica cli = new Clinica("zezoca");
		
		Cadeira c1 = new Cadeira("Cadeira", 1, Material.plastico, 4, 50.0, Tipo.Espera);
		Cama c2 = new Cama("Cama", 2, Material.madeira, new Dimensao(1.90, 1.40), true);
		
		cli.addFurniture(c1);
		cli.addFurniture(c2);
		
		FileOutputStream fos = new FileOutputStream("src/preparation/clinica/clinica.bin");
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(cli);
		oos.close();
		
		System.out.println("Done writting!");
		
		FileInputStream fis = new FileInputStream("src/preparation/clinica/clinica.bin");
		ObjectInputStream ois = new ObjectInputStream(fis);
		Clinica c = (Clinica) ois.readObject();
		System.out.println("Nome: " + c.getNome());
		ois.close();
		
		System.out.println(c);

	}

}
