package aula5.Ex5_3;
import java.io.*;

public interface FormatoAgenda {
	public Pessoa[] readFile(String filename) throws IOException;
	public void writeFile(String filename, Pessoa[] pessoas) throws IOException;
}
