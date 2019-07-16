package aula4.Ex4_3;
import java.util.*;

public class ClientList {
	private List<Cliente> clients = new ArrayList<>();
	
	public void addClient(Cliente c) {
		clients.add(c);
	}
	public void removeClient(Cliente c) {
		clients.remove(c);
	}
	public Cliente getClient(int cc) {
		for(Cliente c : clientsToArray()) {
			if(c.cc() == cc) {
				return c;
			}
		}
		throw new IllegalArgumentException();
	}
	public int size() { return clients.size(); }
	
	private Cliente[] clientsToArray() { return clients.toArray(new Cliente[0]); }
}
