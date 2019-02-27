%    A     B    C    D
T = [0.84  0.1  0    0.5;
     0.1   0.7  0    0.1;
     0.05  0.1  0.8  0.1;
     0.01  0.1  0.2  0.3]
     
x = [1; 2; 10; 5];

ton = T^7 * x

% b
max = zeros(4, 1);
for i=0: 100
  t = T^i * x;
  if(t(1) > max(1)) max(1) = t(1); endif
  if(t(2) > max(2)) max(2) = t(2); endif
  if(t(3) > max(3)) max(3) = t(3); endif
  if(t(4) > max(4)) max(4) = t(4); endif
endfor

max(1)
max(2)
max(3)
max(4)