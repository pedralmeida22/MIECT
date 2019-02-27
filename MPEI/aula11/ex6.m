% a)
%    1    2    3    4
H = [0.8  0    0.3  0;
     0.2  0.9  0.2  0;
     0    0.1  0.4  0;
     0    0    0.1  1]
     
% b)
prob1000 = H^1000 * [1; 0; 0; 0]

% c)
prob1 = zeros(4, 4);
prob2 = zeros(4, 4);
prob100 = zeros(4, 4);

fprintf('------------------------------------\n')
for i = 1:4
  x_0 = [1; 2; 3; 4] == i;
  
  aux = H^1 * x_0;
  prob1(:, 1) = aux(:)
  
  aux = H^2 * x_0;
  prob2(:, 1) = aux(:)
  
  aux = H^100 * x_0;
  prob100(:, 1) = aux(:)
  
  fprintf('------------------------------------\n')
endfor

% d)
Q = H(1:3, 1:3)

% e)
F = inv(eye(3) - Q)

% f)
mediaPassos = sum(F)


