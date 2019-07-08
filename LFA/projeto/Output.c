#include <stdio.h>
#include <math.h>
#include "Utils.h"

int main()
{
      Unit v1 = CreateUnit(2, 1, 0, 0, 0, 0, 0.0);
      Unit v2 = v1;
      Unit v3 = CreateUnit(3, 0, 0, 1, 0, 0, 0.0);
      Unit v4 = v3;
      Unit v5 = CreateUnit(4, 0, 1, 0, 0, 0, 0.0);
      Unit v6 = v5;
   Unit v7 = v2;
   Unit v8 = v4;
      Unit v9 = UnitMult(v7, v8);
   Unit v10 = v6;
   Unit v11 = v6;
      Unit v12 = UnitMult(v10, v11);
      Unit v13 = UnitDiv(v9, v12);
      Unit v14 = v13;
   Unit v15 = v14;
      PrintUnit(v15);
      Unit v16 = CreateUnit(20, 0, 0, 0, 1, 0, 0.0);
      Unit v17 = v16;
      Unit v18 = CreateUnit(10, 0, 0, 0, 1, 0, 0.0);
      Unit v19 = v18;
   Unit v20 = v17;
   Unit v21 = v19;
      Unit v22 = UnitDiv(v20, v21);
      Unit v23 = v22;
   Unit v24 = v23;
      PrintUnit(v24);
   Unit v25 = v4;
   Unit v26 = v2;
   Unit v27 = v2;
      Unit v28 = UnitMult(v26, v27);
      Unit v29 = UnitMult(v25, v28);
   Unit v30 = v6;
   Unit v31 = v6;
      Unit v32 = UnitMult(v30, v31);
      Unit v33 = UnitDiv(v29, v32);
      Unit v34 = v33;
   Unit v35 = v34;
      PrintUnit(v35);
   Unit v36 = v4;
   Unit v37 = v2;
   Unit v38 = v6;
   Unit v39 = v6;
      Unit v40 = UnitMult(v38, v39);
      Unit v41 = UnitMult(v37, v40);
      Unit v42 = UnitDiv(v36, v41);
      Unit v43 = v42;
   Unit v44 = v43;
      PrintUnit(v44);
   Unit v45 = v4;
   Unit v46 = v2;
   Unit v47 = v2;
      Unit v48 = UnitMult(v46, v47);
      Unit v49 = UnitMult(v45, v48);
   Unit v50 = v6;
   Unit v51 = v6;
      Unit v52 = UnitMult(v50, v51);
   Unit v53 = v6;
      Unit v54 = UnitMult(v52, v53);
      Unit v55 = UnitDiv(v49, v54);
      Unit v56 = v55;
   Unit v57 = v56;
      PrintUnit(v57);
      Unit v58 = CreateUnit(3, 0, 0, 0, 1, 1, 273.15);
      Unit v59 = v58;
   Unit v60 = v59;
      PrintUnit(v60);
      Unit v61 = CreateUnit(5, 0, 0, 0, 1, 1, 1.0);
      Unit v62 = v61;
   Unit v63 = v62;
      PrintUnit(v63);
}
