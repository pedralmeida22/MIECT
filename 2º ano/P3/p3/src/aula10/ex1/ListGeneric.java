package aula10.ex1;

import java.util.*;

public class ListGeneric<T> {
	private List<T> elements;
	
	public ListGeneric() {
		this.elements = new LinkedList<T>();
	}
	
	public boolean addElem(T elem) {
		return elements.add(elem);
	}
		public boolean removeElem (T elem) {
		return elements.remove(elem);
	}
	
	public int totalElem () { return elements.size(); }
	
	public Iterator<T> iterator() { return new ListIterator<T>(); }
	
	private class ListIterator<K> implements Iterator<K> {

		public int index = 0;	
		
		@Override
		public boolean hasNext() {
			return index < totalElem();
		}

		@Override
		public K next() {
			if(hasNext()) {
				@SuppressWarnings("unchecked")
				K t = (K) elements.get(index);
				index++;
				return t;
			}
			throw new IndexOutOfBoundsException("only "
					+ totalElem() + " elements");
		}
		
	}

}
