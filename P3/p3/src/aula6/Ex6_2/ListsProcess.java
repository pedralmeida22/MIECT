package aula6.Ex6_2;
import java.util.*;
import java.util.function.Predicate;

public interface ListsProcess {
	public static <T> List<T> filter(List<T> list, Predicate<T> predicate) {
		List<T> temp = new ArrayList<T>();
		for(T t : list) {
			if(predicate.test(t))
				temp.add(t);
		}
		return temp;
	}
}
