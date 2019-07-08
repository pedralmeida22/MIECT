#include <stdio.h>
#include <stdlib.h>
#include "Utils.h"


 Unit CreateUnit(double v,int me,int se,int ga,int ke, int convert, double convertValue){
    Unit var;
    if(convert){
        var.value= v * convertValue;
        if(ke){
            if(convertValue == 273.15){
                var.value = v + convertValue;
            }
            else{
                var.value = (((v - 32)*(5.0/9.0)) + 273.15) * convertValue;
            }
        }
    }
    else{
        var.value=v;
    }
    var.m=me;
    var.s=se;
    var.g=ga;
    var.k=ke;
    return var;
}

int UnitCompareTo(Unit punit1,Unit punit2){
    if(punit1.g != punit2.g || punit1.m!=punit2.m || punit1.s!=punit2.s || punit1.k!=punit2.k){
        printf("ERROR: Not able to compare different units\n");
        exit(1);
    }
    return punit1.value-punit2.value;
}

void PrintUnit(Unit punit){
    if(punit.g == 0 && punit.m==0 && punit.s==0 && punit.k==0){
        printf("%4.3f\n",punit.value);
    }else if(punit.m==0 && punit.s==0 && punit.k == 0){
        if(punit.g == 1){
            printf("%4.3f Kg\n", punit.value);
        }
        else{
            printf("%4.3f Kg^%d\n",punit.value,punit.g);
        }
    }else if(punit.m==0 && punit.g==0 && punit.k == 0){
        if(punit.s == 1){
            printf("%4.3f s\n", punit.value);
        }
        else{
            printf("%4.3f s^%d\n",punit.value,punit.s);
        }
    }else if(punit.s==0 && punit.g==0 && punit.k == 0){
        if(punit.m == 1){
            printf("%4.3f m\n", punit.value);
        }
        else{
            printf("%4.3f m^%d\n",punit.value,punit.m);
        }
    }else if(punit.s==0 && punit.g==0 && punit.k == 0){
        if(punit.m == 1){
            printf("%4.3f m\n", punit.value);
        }
        else{
            printf("%4.3f m^%d\n",punit.value,punit.m);
        }
    }else if(punit.s==0 && punit.g==0 && punit.k == 0){
        if(punit.m == 1){
            printf("%4.3f m\n", punit.value);
        }
        else{
            printf("%4.3f m^%d\n",punit.value,punit.m);
        }
    }else if(punit.s==0 && punit.g==0 && punit.m == 0){
        if(punit.k == 1){
            printf("%4.3f K\n", punit.value);
        }
        else{
            printf("%4.3f K^%d\n",punit.value,punit.k);
        }
    }else if(punit.m == 0 && punit.s == 0){
        printf("%4.3f Kg^%d.K^%d\n",punit.value,punit.g,punit.k);
    }else if(punit.m == 0 && punit.g == 0){
        printf("%4.3f s^%d.K^%d\n",punit.value,punit.s,punit.k);
    }else if(punit.m == 0 && punit.k == 0){
        printf("%4.3f Kg^%d.s^%d\n",punit.value,punit.g,punit.s);
    }else if(punit.g == 0 && punit.s == 0){
        printf("%4.3f m^%d.K^%d\n",punit.value,punit.m,punit.k);
    }else if(punit.g == 0 && punit.k == 0){
        printf("%4.3f m^%d.s^%d\n",punit.value,punit.m,punit.s);
    }else if(punit.k == 0 && punit.s == 0){
        printf("%4.3f Kg^%d.m^%d\n",punit.value,punit.g,punit.m);
    }else if(punit.m==0){
        printf("%4.3f Kg^%d.s^%d.K^%d\n",punit.value,punit.g,punit.s,punit.k);
    }else if(punit.s==0){
        printf("%4.3f Kg^%d.m^%d.K^%d\n",punit.value,punit.g,punit.m,punit.k);
    }else if(punit.g==0){
        printf("%4.3f m^%d.s^%d.K^%d\n",punit.value,punit.m,punit.s,punit.k);
    }else if(punit.k==0){
	    if(punit.g == 1 && punit.m == 1 && punit.s == -2){
            printf("%4.3f N\n", punit.value);
        }
        else if(punit.g == 1 && punit.m == 2 && punit.s == -2){
            printf("%4.3f J\n", punit.value);
        }
        else if(punit.g == 1 && punit.m == -1 && punit.s == -2){
            printf("%4.3f Pa\n", punit.value);
        }
        //else if(punit.g == 0 && punit.m == 0 && punit.s == -1){
            //printf("%4.3f Hz\n", punit.value);
        //}
        else if(punit.g == 1 && punit.m == 2 && punit.s == -3){
            printf("%4.3f W\n", punit.value);
        }
        else{
            printf("%4.3f Kg^%d.m^%d.s^%d\n",punit.value,punit.k,punit.m,punit.s);
        }
    }else{
        printf("%4.3f Kg^%d.m^%d.s^%d.K^%d\n",punit.value,punit.g,punit.m,punit.s,punit.k);
    }
}

Unit UnitAdd (Unit punit1,Unit punit2){
    if(punit1.g != punit2.g || punit1.m!=punit2.m || punit1.s!=punit2.s || punit1.k!=punit2.k){
        printf("ERROR: Not able to sum values with different units\n");
        exit(1);
    }
    Unit temp;
    temp.g = punit1.g;
    temp.s = punit1.s;
    temp.m = punit1.m;
    temp.k = punit1.k;
    temp.value = punit1.value+punit2.value;
    return temp;
}


Unit UnitSub (Unit punit1,Unit punit2){
    if(punit1.g != punit2.g || punit1.m!=punit2.m || punit1.s!=punit2.s || punit1.k!=punit2.k){
        printf("ERROR: Not able to subtract values with different units\n");
        exit(1);
    }
    Unit temp;
    temp.g = punit1.g;
    temp.s = punit1.s;
    temp.m = punit1.m;
    temp.k = punit1.k;
    temp.value = punit1.value-punit2.value;
    return temp;
}

Unit UnitMultConst(Unit punit,double x){
    Unit temp;
    temp.g = punit.g;
    temp.s = punit.s;
    temp.m = punit.m;
    temp.k = punit.k;
    temp.value = punit.value*x;
    return temp;
}

Unit UnitMult(Unit punit1,Unit punit2){
    double res = punit1.value*punit2.value;
    int g = punit1.g + punit2.g;
    int s = punit1.s + punit2.s;
    int m = punit1.m + punit2.m;
    int k = punit1.k + punit2.k;
    return CreateUnit(res,m,s,g,k,0,0);
}

Unit UnitDivConst(Unit punit,double x){
    Unit temp;
    temp.g = punit.g;
    temp.s = punit.s;
    temp.m = punit.m;
    temp.k = punit.k;
    temp.value = punit.value/x;
    return temp;
}

Unit UnitDiv(Unit punit1,Unit punit2){
    double res = punit1.value/punit2.value;
    int g = punit1.g - punit2.g;
    int s = punit1.s - punit2.s;
    int m = punit1.m - punit2.m;
    int k = punit1.k - punit2.k;
    return CreateUnit(res,m,s,g,k,0,0);
}
