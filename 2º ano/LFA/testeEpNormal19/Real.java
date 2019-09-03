public class Real extends Value {
    public double real;

    Real(double v) {
        this.real = v;
    }

    public void invert() {
        real = real * (-1);
    }

    public Value sum(Value v) {
        Real r = (Real) v;
        return new Real(this.real + r.real);
    }

    public Value sub(Value v) {
        Real r = (Real) v;
        return new Real(this.real - r.real);
    }

    @Override
    public String toString() {
        return "" + real;
    }
}