
//typedef struct Unit *PtUnit;

typedef struct 
{
    double value;
    int m;
    int s;
    int g;
    int k;
}Unit;

Unit CreateUnit(double v,int me,int se,int ga,int ke,int convert, double convertValue);

int UnitCompareTo(Unit punit1,Unit punit2);

void PrintUnit(Unit punit);

Unit UnitMultConst(Unit punit,double x);
Unit UnitMult(Unit punit1,Unit punit2);
Unit UnitDivConst(Unit punit,double x);
Unit UnitDiv(Unit punit1,Unit punit2);
Unit UnitAdd (Unit punit1,Unit punit2);
Unit UnitSub (Unit punit1, Unit punit2);
