package p2utils;

public class SortedList<E extends Comparable<E>> {
  // private attributes
  private Node<E> first = null;
  private int size = 0;

  public SortedList() { }

  /**
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /**
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";
      return first.elem;
  }

  /** Inserts a new element in the list.
   * @param e the element to be inserted
   */
  public void insert(E e) {
    first = insert(first, e);
    size++;
  }
  private Node<E> insert(Node<E> n, E e) {
    if (n==null || e.compareTo(n.elem) < 0)
      return new Node<E>(e,n);
    n.next = insert(n.next,e);
    return n;
  }

  /** Removes the first element in the list.
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    first = first.next;
    size--;
  }

  /** Checks if the list is sorted.
   * @return {@code true} if sorted, {@code false} otherwise
   */
  public boolean isSorted() { 
    if (size < 2)
      return true;
    return isSorted(first,first.next); 
  }
  private boolean isSorted(Node<E> prev, Node<E> n) {
    if (n == null) return true;
    if (n.elem.compareTo(prev.elem) < 0) return false;
    return isSorted(n,n.next);
  }
  public boolean contains(E e){
	  Node<E> n = first;
	  while(n != null){
		  if(n.elem.compareTo(e) == 0){
			  return true;
		  }
		  n = n.next;
	  }
	  return false;
  }
	public String toString(){
		String res = "[";
		Node<E> n = first;
		res += n.elem;
		for (int i = 0; i < size - 1; i++){
			res += (", " + n.next.elem);
		}
		res += "]";
		return res;
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
