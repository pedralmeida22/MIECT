package preparation.bar;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.*; 
import java.util.stream.Collectors;

public class Bar implements Serializable {
	private static final long serialVersionUID = 1L;
	private String name;
	private Set<Bebida> bebidas;
	
	Bar(String n){
		this.name = n;
		this.bebidas = new HashSet<>();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Bebida> getBebidas() {
		return bebidas;
	}

	public void setBebidas(Set<Bebida> bebidas) {
		this.bebidas = bebidas;
	}
	
	public boolean addBebida(Bebida b) {
		return bebidas.add(b);
	}
	
	public List<Bebida> list() {
		return bebidas.stream().collect(Collectors.toList());
	}
	
	public int size() {
		return bebidas.size();
	}
	
	public boolean remove(int i) {
		Bebida[] temp = this.toArray();
		return bebidas.remove(temp[i]);
	}
	
	private Bebida[] toArray() {
		List<Bebida> list = bebidas.stream().collect(Collectors.toList());
		return list.toArray(new Bebida[bebidas.size()]);
	}
	
	public void saveBar(String filename) throws FileNotFoundException, IOException {
		ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("src/preparation/bar/" + filename));
		oos.writeObject(this);
		oos.close();
		System.out.println("\nFicheiro escrito com sucesso!");
	}
	
	public static Bar loadBar(String filename) throws FileNotFoundException, IOException, ClassNotFoundException {
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream("src/preparation/bar/" + filename));
		Bar temp = (Bar) ois.readObject();
		ois.close();
		System.out.println("\nFicheiro lido com sucesso!");
		return temp;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bebidas == null) ? 0 : bebidas.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		Bar other = (Bar) obj;
		if (bebidas == null) {
			if (other.bebidas != null)
				return false;
		} else if (!bebidas.equals(other.bebidas))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return bebidas.stream().map(x -> x.toString()).collect(Collectors.joining("\n"));
	}
	
	public MyRangeIterator<Bebida> iterator() {
		return (this).new MyRangeIterator<Bebida>();
	}
	
	@SuppressWarnings("hiding")
	public class MyRangeIterator<Bebida> implements Iterator<Bebida> {
		private int index;
		
		MyRangeIterator(){
			this.index = 0;
		}

		@Override
		public boolean hasNext() {
			return index < bebidas.size();
		}

		@SuppressWarnings("unchecked")
		@Override
		public Bebida next() {
			Bebida b = (Bebida) bebidas.toArray()[index];
			index++;
			return b;
		}
	}
	
}
