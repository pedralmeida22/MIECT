% a

T = [0.8  0.1  0.05;
     0.2  0.6  0.2;
     0    0.3  0.75]
     
ini = [100; 200; 30]

dia4 = T^3 * ini

dia365 = T^365 * ini

n = 1;
afterN = T * ini;
while(1)
  if(afterN(3) > 130) break; endif;
  
  afterN = T * afterN;
  n = n + 1;
end

fprintf('Catarina tem mais de 130 euros ao fim de: %d dias\n', n);