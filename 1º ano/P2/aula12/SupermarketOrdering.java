import p2utils.*;
import static java.lang.System.*;

public class SupermarketOrdering {
	
	Queue<Order> queue = new Queue<>();
	HashTable<Integer> hashtab = new HashTable<>(10);
		
	public void enterOrder(Order order){
		queue.in(order);
		int count = 0;
		if(hashtab.contains(order.prodName)){
			count = hashtab.get(order.prodName);
		}
		hashtab.set(order.prodName, count + order.quantity);
	}
	public Order serveOrder(){
		Order temp = queue.peek();
		hashtab.set(temp.prodName, temp.quantity - 1);		
		queue.out();
		
		return temp;
	}
	
	public int query(String product){
		return hashtab.get(product);
	}
	
	public void displayOrders(){
		int vezes = queue.size();
		String res = "";
		for (int i = 0; i < vezes; i++) {
			Order temp = queue.peek();
			queue.out();
			queue.in(temp);
			res += temp.toString() + ", ";
		}
		
		out.println("List of orders: [" + res + "]");
		out.println("Summary by product: " + hashtab.toString());	
		
	}
}

