p = 0.4;
q = 0.6;

%      A       B  C    D
T = [p^2       0  0  q^2;
     (1-p).^2  0  0  q*(1-q);
     p*(1-p)   0  0  q*(1-q);
     p*(1-p)   1  1  (1-q).^2]
 
isStochasticMatrix(T);

% b)

x = [1; 0; 0; 0]
prob = T^10 * x
fprintf('Estado A, %f\n', prob(1));
fprintf('Estado B, %f\n', prob(2));
fprintf('Estado C, %f\n', prob(3));
fprintf('Estado D, %f\n', prob(4));