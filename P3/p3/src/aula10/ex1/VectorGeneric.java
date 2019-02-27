package aula10.ex1;

import java.util.Iterator;

public class VectorGeneric<T> implements Iterable<T> {
	private T[] elements;
	private int nElements;
	
	@SuppressWarnings("unchecked")
	public VectorGeneric(int space) {
		this.elements = (T[]) new Object[space];
		this.nElements = 0;
	}
	
	public VectorGeneric() {
		this(10);
	}
	
	public boolean addElem(T elem) {
		int size = elements.length;
		if(elem == null) return false;
		if(nElements == size) {
			int newSize = size + 10;
			@SuppressWarnings("unchecked")
			T[] newElements = (T[]) new Object[newSize]; 
			System.arraycopy(elements, 0, newElements, 0, size);
			elements = newElements;
		}
		elements[nElements++] = elem;
		return true;
	}
	
	public boolean removeElem (T elem) {
		if(elem == null) return false;
		for (int i = 0; i < nElements; i++) {
			if(elements[i] == elem) {
				nElements--;
				for (int j = i; j < nElements;) {
					elements[j] = elements[j+1];
					return true;
				}
			}
		}
		return false;
	}
	
	public int totalElem () {
		return nElements;
	}
	
	public Iterator<T> iterator() { return new VectorIterator<T>(); }
	
	private class VectorIterator<K> implements Iterator<K> {
		
		public int index = 0;
		
		@Override
		public boolean hasNext() {
			return index < nElements;
		}

		@Override
		public K next() {
			if(hasNext()) {
				@SuppressWarnings("unchecked")
				K k = (K) elements[index];
				index++;
				return k;
			}
			throw new IndexOutOfBoundsException("only "
					+ totalElem() + " elements");
		}	
		
	}
}
