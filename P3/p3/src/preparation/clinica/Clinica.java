package preparation.clinica;

import java.io.*; 
import java.util.*;
import java.util.stream.Collectors;

public class Clinica implements Serializable {
	private static final long serialVersionUID = 1L;
	private String nome;
	private Set<Mobiliario> set;
	
	Clinica(String n){
		this.nome = n;
		this.set = new HashSet<>();
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public boolean addFurniture(Mobiliario m) {
		return set.add(m);
	}
	public boolean removeFurniture(Mobiliario m) {
		return set.remove(m);
	}
	
	public List<Transporte> listTransportes(){
		/*List<Mobiliario> trans = new LinkedList<>();
		for(Mobiliario m : set) {
			if(m instanceof Transporte) {
				trans.add((Transporte) m);
			}
		}
		return trans;*/
		return set.stream().filter(x -> x instanceof Transporte).map(x -> (Transporte) x).collect(Collectors.toList());
	}
	
	public void saveClinica(String filename) {
		try {
			FileOutputStream fos = new FileOutputStream("src/preparation/clinica/" + filename);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(this);
			oos.close();
			
			System.out.println("\nFicheiro escrito com sucesso!");
			
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("\nImpossivel escrever no ficheiro!");
		}
	}
	
	public static Clinica loadClinica(String filename) {
		Clinica cli = null;
		try {
			FileInputStream fis = new FileInputStream("src/preparation/clinica/" + filename);
			ObjectInputStream ois = new ObjectInputStream(fis);
			cli = (Clinica) ois.readObject();
			
			ois.close();
			
			System.out.println("\nFicheiro lido com sucesso!");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("\nImpossivel ler do ficheiro!");
		}
		return cli;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((set == null) ? 0 : set.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Clinica other = (Clinica) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (set == null) {
			if (other.set != null)
				return false;
		} else if (!set.equals(other.set))
			return false;
		return true;
	}

	//@Override
	public String toString() {
		String s = "-----------Clinica " + this.getNome() + "---------------\n";
		s += set.stream().map(x -> x.toString()).collect(Collectors.joining("\n"));
		
		return s;
	}
	
	public Iterator<Mobiliario> iterator() {
		return (this).new MyRangeIterator<Mobiliario>();
	}
	public Iterator<Mobiliario> iterator(int i, int f) {
		return (this).new MyRangeIterator<Mobiliario>(i, f);
	}
	
	
	@SuppressWarnings("hiding")
	public class MyRangeIterator<Mobiliario> implements Iterator<Mobiliario> {
		
		private int index;
		private int done;
		
		MyRangeIterator(){
			index = 0;
			done = set.size();
		}
		MyRangeIterator(int ini, int end){
			index = ini;
			done = end + 1;
		}
		
		@Override
		public boolean hasNext() {
			return index < done;
		}

		@SuppressWarnings("unchecked")
		@Override
		public Mobiliario next() {
			if(hasNext()) {
				Mobiliario t = (Mobiliario) set.toArray()[index];
				index++;
				return t;
			}
			return null;
		}
		
	}
}

