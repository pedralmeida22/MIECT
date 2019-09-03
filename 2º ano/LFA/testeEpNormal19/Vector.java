import java.util.*;

public class Vector extends Value {
    protected List<Real> list;

    public Vector() {
        this.list = new ArrayList<>();
    }

    public void invert() {
        list.forEach(x -> x.invert());
    }

    public Value sum(Value v) {
        Vector res = new Vector();
        Vector vec = (Vector) v;

        int lenght = this.list.size();
        if (vec.list.size() < lenght)
            lenght = vec.list.size();

        for (int i = 0; i < lenght; i++) {
            res.list.add((Real) this.list.get(i).sum(vec.list.get(i)));
        }
        return res;
    }

    public Value sub(Value v) {
        Vector res = new Vector();
        Vector vec = (Vector) v;

        int lenght = this.list.size();
        if (vec.list.size() < lenght)
            lenght = vec.list.size();

        for (int i = 0; i < lenght; i++) {
            res.list.add((Real) this.list.get(i).sub(vec.list.get(i)));
        }

        return res;
    }

    @Override
    public String toString() {
        return list.toString();
    }
}