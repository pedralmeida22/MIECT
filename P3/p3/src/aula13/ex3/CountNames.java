package aula13.ex3;

import java.util.*;
import java.util.stream.Collectors;

public class CountNames {
	private Map<String, Integer> map = new HashMap<>();
	
	public void insert(String n) {
		if(map.containsKey(n)) {
			map.put(n, map.get(n) + 1);
		}else {
			map.put(n, 1);
		}
	}
	
	public void remove(String n) {
		if(map.containsKey(n)) {
			int count = map.get(n) - 1;
			if(count == 0) {
				map.remove(n);
			}else {
				map.put(n, count);
			}
		}
	}

	@Override
	public String toString() {
		return map.keySet().stream().map(x -> x.concat(":").concat(map.get(x).toString())).collect(Collectors.joining("\n"));
	}
	
}
