% a
%     a    b    c   d    ?  .
T = [0.7  0.2  0    0    0  0;
     0.2  0    0.3  0    0  0;
     0    0.6  0.3  0    0  0;
     0.1  0.2  0.3  0.1  0  0;
     0    0    0    0.4  1  0;
     0    0    0.1  0.5  0  1]
     
v = [1; 0; 0; 0; 0; 0];

% b
prob1 = T^9 * v;

probC = prob1(3)

prob2 = T^14 * v;

probD = prob2(4)

% c

Q = T(1:4, 1:4);

F = inv(eye(4) - Q)

media = sum(F)