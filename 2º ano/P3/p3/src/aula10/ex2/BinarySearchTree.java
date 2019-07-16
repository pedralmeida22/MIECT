package aula10.ex2;

import java.util.*;
import java.lang.Comparable;

public class BinarySearchTree<T extends Comparable<? super T>> implements Iterable<T> {
// o elemento do tipo T deve ser comparável para efectuar pesquisas
// mas como pode herdar a implementação de compareTo() é mais correcto
// usar <? super T>
	
	private static class BSTNode<T> {
		T element;
		BSTNode<T> left;
		BSTNode<T> right;
		BSTNode(T theElement) {
			element = theElement;
			left = right = null;
	}
		
	public BSTNode<T> subTreeMin(){
		return subTreeMin(this);
	}
	
	private BSTNode<T> subTreeMin(BSTNode<T> n){
		if(n.left == null) {
			return n;
		}
		return subTreeMin(n.left);
	}
	
	@SuppressWarnings("unused")
	public BSTNode<T> subTreeMax(){
		return subTreeMax(this);
	}
	
	private BSTNode<T> subTreeMax(BSTNode<T> n){
		if(n.right == null) {
			return n;
		}
		return subTreeMax(n.right);
	}
		
}
	
	
	private BSTNode<T> root;
	private int numNodes;
	
	public BinarySearchTree() {
		root = null;
		numNodes = 0;
}
	public void insert(T value) {
		root = insert(value, root);
	}
	
	private BSTNode<T> insert(T value, BSTNode<T> n){
		if(n == null) {
			numNodes++;
			return new BSTNode<T>(value);
		}
		
		int temp = value.compareTo(n.element);
		if(temp < 0) {
			n.left = insert(value, n.left);
			return n;
		}else {
			n.right = insert(value, n.right);
			return n;
		}
	}
	
	public void remove(T value) {
		if(root == null) throw new NullPointerException();
		if(!contains(value)) throw new NoSuchElementException();
		numNodes--;
		root = remove(value, root);
	}
	
	private BSTNode<T> remove(T value, BSTNode<T> n){
		int temp = value.compareTo(n.element);
		if(temp < 0) {
			n.left = remove(value, n.left);
		}
		else if(temp > 0) {
			n.right = remove(value, n.right);
		}
		// 1 child
		else if(n.left == null) {
			n = n.right;
		}
		else if(n.right == null) {
			n = n.left;
		}
		// 2 childs
		else {
			n = n.subTreeMin();
			remove(n.element);
		}
		return n;
	}
	
	public boolean contains(T value) {
		Iterator<T> it = iterator();
		while(it.hasNext()) {
			if(it.next().equals(value)) {
				return true;
			}
		}
		return false;
	}
	
	public Iterator<T> iterator() {
		return new BSTIterator<T>(root);
	}
	
	private class BSTIterator<E> implements Iterator<E> {
		
		Queue<BSTNode<E>> queue;
		
		public BSTIterator(BSTNode<E> root) {
			queue = new LinkedList<BSTNode<E>>();  // nao pode ser new Queue<BSTNode<E>() pq é uma interface
			while(root != null) {
				queue.add(root);
				root = root.left;
			}
		}

		@Override
		public boolean hasNext() {
			return !queue.isEmpty();
		}

		@Override
		public E next() {
			BSTNode<E> n = queue.remove();
			E next = n.element;
			if(n.right != null) {
				n = n.right;
				while(n != null) {
					queue.add(n);
					n = n.left;
				}
			}
			return next;
		}
		
	}
}