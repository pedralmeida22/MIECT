package preparation.bar;

import java.util.*;

public class PerPriceComparator implements Comparator<Bebida> {

	@Override
	public int compare(Bebida b0, Bebida b1) {
		if(b0.getPrice() <= b1.getPrice())
			return -1;
		else
			return 1;
	}

}
