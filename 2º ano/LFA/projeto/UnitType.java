
import java.util.*;

public class UnitType extends Type
{                                               //metro     segundo, kilograma
   protected int[] tipo = new int[4];      //[expoente, expoente,expoente]


    protected UnitType() {
        super("unit");
    }

   public void setUnidade(List<Integer> lista) {
        for (int i = 0; i < tipo.length; i++) {
            tipo[i] = lista.get(i);
        }
    }    

   public int[] tipo(){
       return tipo;
   }

   public boolean equals(Type other) { //ve se dimensoes iguais
    int[] tipoA = other.tipo();
    if(tipoA[0] != tipo[0] || tipoA[1] != tipo[1] || tipoA[2] != tipo[2] || tipoA[3] != tipo[3])
         return false;
     return true;
   }

   

}