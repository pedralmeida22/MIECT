import java.util.Scanner;

public abstract class Symbol
{
   protected final String name;
   protected final Type type;
   protected String compilerName = null;
   

   public Symbol(String name, Type type) {
      assert name != null && !name.isEmpty();
      assert type != null;

      this.name = name;
      this.type = type;
   }

   public String name(){
      return name;
   }

   public Type type(){
      return type;
   }

   public boolean compilerNameDefined(){
      return compilerName != null;
   }

   public void defineCompilerName(String name){
      assert name != null && !name.isEmpty();

      compilerName = name;
   }

   public String compilerName(){
      assert compilerNameDefined();

      return compilerName;

   }
}