package aula13.ex3;

import java.util.*;
import java.util.stream.Collectors;

public class ToysNames {
	private List<String> toys = new LinkedList<>();
	private String toyName;
	
	public ToysNames(String name) {
		setName(name);
	}
	
	public void setName(String n) {
		toyName = n;
	}
	
	public boolean addToy(String toy) {
		return toys.add(toy);
	}
	
	public boolean removeToy(String toy) {
		return toys.remove(toy);
	}

	@Override
	public String toString() {
		return toys.stream().map(x -> toyName.concat(":" + x)).collect(Collectors.joining("\n"));
	}
	
	
}
