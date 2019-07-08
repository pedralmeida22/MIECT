import static java.lang.System.*;

import java.util.List;
import java.util.Scanner;

public abstract class Type
{
   public int[] tipo;
   protected final String name;

   protected Type(String name) {
      assert name != null;
      this.name = name;
   }

   public String name() {
      return name;
   }
   public int[] tipo(){
      return null;
  }

   public boolean subtype(Type other) {
      return name.equals(other.name());
   }

   public boolean isNumeric() {
      return false;
   }

   public void setUnidade(List<Integer> list) {
   }

   public boolean equals(Type other){
      return true;
   }

}

