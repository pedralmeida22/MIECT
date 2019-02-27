T = [0.9   0.5  0.5;
     0.09  0.4  0.4;
     0.01  0.1  0.1]
     
v = [0; 0; 1];

prob = T^4 * v

% c
i = 2;
while(1)
  Temp1 = T^(i-1) * v;
  Temp2 = T^(i) * v;
  
  t1 = abs(Temp1(1) - Temp2(1));
  t2 = abs(Temp1(2) - Temp2(2));
  t3 = abs(Temp1(3) - Temp2(3));
  
  tt = t1 + t2 + t3;
  
  if(tt < 0.001)
    break;
  endif
  i++
endwhile

Temp2