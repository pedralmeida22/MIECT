package aula13.ex3;

import java.util.*;
import java.util.stream.Collectors;

public class giveGift {
	private Map<String, List<String>> map = new TreeMap<>();
	
	public void give(String worker, String gift) {
		if(map.containsKey(worker)) {
			map.get(worker).add(gift);
		}else {
			List<String> gifts = new LinkedList<>();
			gifts.add(gift);
			map.put(worker, gifts);		}
	}
	
	public boolean takeBack(String worker) {
		if(map.containsKey(worker)) {
			List<String> gifts = map.get(worker);
			gifts.remove(gifts.size()-1);
			if(gifts.size() == 0) map.remove(worker);
			return true;
		}
		return false;
	}

	@Override
	public String toString() {
		return map.keySet().stream().map(x -> x.concat(":").concat(map.get(x).toString())).collect(Collectors.joining("\n"));
	}
	
	
}
