package p2utils;

/** This class implements a List abstract data type using a linked list.
 * Please note that this is p2utils.LinkedList.
 * It is NOT the java.util.LinkedList class in the standard Java library!
 */
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

  /** Prints all elements, one per line. */
  public void print() {
    print(first);
  }
  private void print(Node<E> n) {
    if (n != null) {
      System.out.println(n.elem);
      print(n.next);
    }
  }

  // funções adicionais pedidas no guião...
   public LinkedList<E> clone() {
	  LinkedList<E> myClone = new LinkedList<E>();
	  return clone(first, myClone);
  }
  
  private LinkedList<E> clone(Node<E> n, LinkedList<E> myClone) { 
	 
	  //nao recursiva
	  //~ Node<E> n = first;
	  //~ while(n != null){{
		  //~ myClone.addLast(n.elem);
		  //~ n = n.next;
	  //~ }
	  //~ return myClone;
	  
	  //Recursiva
	  if(n != null){
		  myClone.addLast(n.elem);
		  clone(n.next, myClone);
	  }
	  return myClone;	  
  }
  
  public LinkedList<E> reverse(){
	  LinkedList<E> myReverse = new LinkedList<E>();
	  return reverse(first, myReverse);
  }
  private LinkedList<E> reverse(Node<E> n, LinkedList<E> myReverse) { 
	 
	  if(n != null){
		  myReverse.addFirst(n.elem);
		  reverse(n.next, myReverse);
	  }
	  return myReverse;
  }
  public E get(int pos){
	  //assert pos < size()-1 : "Posicao invalida";
	  return get(first, pos);
  }
  
  private E get(Node<E> n, int pos){
	  if(pos == 0) return n.elem;
	  return get(n.next, pos-1);
  }
  
  public LinkedList<E> concatenate(LinkedList<E> lst){
	  lst = lst.reverse();
	  return concatenate(lst.first, this);
  }
  private LinkedList concatenate(Node<E> n, LinkedList og){
	  if(n == null) return og;
	  LinkedList tmp = concatenate(n.next, og);
	  tmp.addLast(n.elem);
	  return tmp;
  }
  public void remove(E e){
	  remove(first, e);
  }
  private void remove(Node<E> n, E e){
	    if(n == first && n.elem == e) {removeFirst(); size--;}
	    else if(n.next.elem == e){
			n.next = n.next.next;
			size--;
		}else if(n.next != null){
			remove(n.next, e);
		}
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
