public class IntType extends Type {
   public IntType() {
      super("int");
   }

   @Override public boolean subtype(Type other) {
      return super.subtype(other) || other.name().equals("real");
   }

   public boolean isNumeric() {
      return false;
   }

}

