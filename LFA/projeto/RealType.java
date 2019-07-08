public class RealType extends Type {
   public RealType() {
      super("real");
   }

   @Override public boolean subtype(Type other) {
      return super.subtype(other) || other.name().equals("int");
   }

   public boolean isNumeric() {
      return true;
   }
}

