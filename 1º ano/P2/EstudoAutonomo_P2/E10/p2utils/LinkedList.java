package p2utils;

public class LinkedList<E> {

  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;

  /**
   * {@code LinkedList} constructor, empty so far.
   */
  public LinkedList() { }

  /** Returns the number of elements in the list.
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /** Returns the first element in the list.
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";

    return first.elem;
  }

  /** Returns the last element in the list.
   * @return Last element in the list
   */
  public E last() {
    assert !isEmpty(): "empty!";

    return last.elem;
  }

  /** Adds the given element to the start of the list.
   * @param e the element to add
   */
  public void addFirst(E e) {
    first = new Node<>(e, first);
    if (isEmpty())
      last = first;
    size++;

    assert !isEmpty(): "empty!";
    assert first().equals(e) : "wrong element";
  }

  /** Adds the given element to the end of the list.
   * @param e the element to add
   */
  public void addLast(E e) {
    Node<E> newest = new Node<>(e);
    if (isEmpty())
      first = newest;
    else
      last.next = newest;
    last = newest;
    size++;

    assert !isEmpty(): "empty!";
    assert last().equals(e) : "wrong element";
  }

  /** Removes the first element in the list.
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    first = first.next;
    size--;
    if (isEmpty())
      last = null;
  }

  /** Removes all elements.
   */
  public void clear() {
    first = last = null;
    size = 0;
  }

  /** Returns a string representing the list contents.
   * @return A string representing the list contents
   */
  public String toString() {
    String sep = "";
    String s = "";
    for (Node<E> n = first; n != null; n = n.next) {
      s += sep + n.elem;
      sep = ", ";
    }
    return "[" + s + "]";
  }

  // funcoes adicionais pedidas no guião...
  //~ public int count(E e){
	  //~ Node<E> n = first;
	  //~ int count = 0;
	  //~ while(n != null){
		  //~ if (n.elem.equals(e)){
			  //~ count++;
		  //~ }
		  //~ n = n.next;		  
	  //~ }
	  //~ return count;
  //~ }

	public int count(E e){
		return count(e, first);
	}
	
	private int count(E e, Node<E> n){
		if(n != null){
			if (n.elem.equals(e)){
				return 1 + count(e, n.next);
			}
			return count(e, n.next);
		}
		return 0;
	}
	//~ public int indexOf(E e){
		//~ Node<E> n = first;
		//~ int count = 0;
		//~ while(n != null){
			//~ if(e.equals(n.elem)){ return count; }
			//~ else{
				//~ count++;
				//~ n = n.next;
			//~ }
		//~ }
		//~ return -1;
	//~ }
	
	public int indexOf(E e){
		return indexOf(e, first);
	}
	private int indexOf(E e, Node<E> n){
		if(n != null){
			if(n.elem.equals(e)){
				return 0;
			}else
				return 1 + indexOf(e, n.next);
		}
		return -size()-1;
	}
	//~ public LinkedList<E> cloneReplace(E x, E y){
		//~ LinkedList<E> clone = new LinkedList<E>();
		//~ Node<E> n = first;
		//~ while(n != null){
			//~ if(n.elem == x){
				//~ clone.addLast(y);
			//~ }else{
				//~ clone.addLast(n.elem);
			//~ }
			//~ n = n.next;
		//~ }
		//~ return clone;
	//~ }
	
	public LinkedList<E> cloneReplace(E x, E y){
		LinkedList<E> clone = new LinkedList<E>();
		return cloneReplace(x, y, first, clone);
	}
	private LinkedList<E> cloneReplace(E x, E y, Node<E> n, LinkedList<E> clone){
		if(n != null){
			if(n.elem.equals(x)){
				clone.addLast(y);
			}else{
				clone.addLast(n.elem);
			}
			clone = cloneReplace( x, y, n.next,clone);
		}
		return clone;
	}
	
	//~ public LinkedList<E> cloneSublist(int start, int end){
		//~ assert start >= 0 : "Posicao inicial invalida!";
		//~ assert end > 0 : "Posicao de paragem invalida!";
		//~ assert start < end : "Posicoes invalidas!!";
		
		//~ LinkedList<E> clone = new LinkedList<E>();
		//~ Node<E> n = first;
		//~ int count = 0;
		//~ while(count != start){
			//~ count++;
			//~ n = n.next;
		//~ }
		//~ while(count != end){
			//~ clone.addLast(n.elem);
			//~ n = n.next;
			//~ count++;
		//~ }			
		//~ return clone;		
	//~ }
	public LinkedList<E> cloneSublist(int start, int end){
		assert start >= 0 : "Posicao inicial invalida!";
		assert end > 0 : "Posicao de paragem invalida!";
		assert start < end : "Posicoes invalidas!!";
		
		LinkedList<E> clone = new LinkedList<E>();
		return cloneSublist(start, end, first, clone);
	}
	private LinkedList<E> cloneSublist(int start, int end, Node<E> n, LinkedList<E> clone){
		if(n != null){
			if(start <= 0 && end >= 0){
				clone.addLast(n.elem);
			}
			cloneSublist(start-1, end-1, n.next, clone);
		}
		return clone;
	}
	public LinkedList<E> cloneExceptSublist(int start, int end){
		assert start >= 0 : "Posicao inicial invalida!";
		assert end > 0 : "Posicao de paragem invalida!";
		assert start < end : "Posicoes invalidas!!";
		
		LinkedList<E> clone = new LinkedList<E>();
		return cloneExceptSublist(start, end, first, clone);
	}
	private LinkedList<E> cloneExceptSublist(int start, int end, Node<E> n, LinkedList<E> clone){
		if(n != null){
			if(!(start <= 0 && end >= 0)){
				clone.addLast(n.elem);				
			}
			cloneExceptSublist(start-1, end-1, n.next, clone);
		}
		return clone;
	}
}

class Node<E> {

  final E elem;
  Node<E> next;

  Node(E e, Node<E> n) {
    elem = e;
    next = n;
  }

  Node(E e) {
    elem = e;
    next = null;
  }

}

