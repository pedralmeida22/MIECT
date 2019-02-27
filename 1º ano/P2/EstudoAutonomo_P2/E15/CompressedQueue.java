/**
 * Complete este módulo de forma a que o programa principal funcione
 * devidamente.
 * 
 * Uma CompressedQueue é uma fila, mas onde entradas com o mesmo valor são
 * comprimidas para um único elemento da fila contendo o valor e o número de
 * repetições.
 * 
 * Além disto e dos métodos usuais, tem também métodos adicionais:
 * 
 * peekCount()
 *   Devolve o número de repetições do valor existente na frente da fila.
 * 
 * maxDiff()
 *   Indica qual o maior "salto" (em valor absoluto) entre elementos
 *   consecutivos da fila.
 * 
 * minDiff()
 *   Indica qual o menor "salto" (em valor absoluto) entre elementos
 *   consecutivos da fila.
 * 
 * toString()
 *   Devolve uma string com os elementos da fila (entre {}), por ordem, em cada
 *   elemento é descrito pelo par valor e repetições (entre []) e cada elemento
 *   é por vírgulas.
 * 
 **/
package p2utils;

public class CompressedQueue {
	
	private Queue<Integer> queue = new Queue<Integer>();
	private int size = 0;
  
	public void in(int n){
		queue.addLast(n);
		size++;
		assert !empty() : "Empty!";
	} 
	public void out(){
		assert !empty() : "Already empty!";
		
	}
	public int size(){
		return size;
	}
	public boolean empty(){
		return size == 0;
	}
	public void clear(){
		
		size = 0;
	} 
	
	public int peekCount(){
		//first.elem
		
	}
	public int maxDiff(){
		
	}
	public String toString(){
		
	}

}



//------------------------------




public class LinkedList<E> {

  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;

  /** {@code LinkedList} constructor, empty so far.
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

  /** Checks if the given element exists in the list.
   * @param e an element
   * @return {@code true} if the element exists and {@code false} otherwise
   */
  public boolean contains(E e) { 
    return contains(first, e); 
  }
  private boolean contains(Node<E> n, E e) {
    if (n == null) return false;
    if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
    if (n.elem.equals(e)) return true; 
    return contains(n.next, e);
  }

  // Acrescente as funções adicionais pedidas no guião...


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

