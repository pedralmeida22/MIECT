%    ana  berna  cata
T = [0.8   0.1   0.05  
     0.2   0.6   0.2;
     0     0.3   0.75]
     
ini = [100; 200; 30];

% a)
after3 = T^3 * ini

% b)
after365 = T^365 * ini

% c)
n = 1;
afterN = T * ini;
while(1)
  afterN = T * afterN;
  n = n + 1;
  
  if(afterN(3) > 130) break; end
end
fprintf('Catarina tem mais de 130€ depois de %d dias\n', n)
