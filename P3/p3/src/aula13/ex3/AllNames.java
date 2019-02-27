package aula13.ex3;

import java.util.*;
import java.util.stream.Collectors;

public class AllNames {
	private Set<String> names = new TreeSet<>();
	
	public boolean add(String n) {
		return names.add(n);
	}
	
	public boolean remove(String n) {
		return names.remove(n);
	}

	@Override
	public String toString() {
		return names.stream().collect(Collectors.joining("\n"));
	}
	
}
