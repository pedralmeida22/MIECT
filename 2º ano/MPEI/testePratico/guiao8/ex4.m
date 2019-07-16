p = 0.4;
q = 0.6;

#    A           B   C    D
T = [p^2         0   0    q^2;       # A
     (1-p).^2    0   0    q*(1-q);    # B
     p*(1-p)     0   0    q*(1-q);    # C
     p*(1-p)     1   1    (1-q).^2]  # D
     
isStochasticMatrix(T);
     
     
x = [1; 0; 0; 0];
px = T^10 * x;

fprintf('Estado A: %f\n', px(1));
fprintf('Estado B: %f\n', px(2));
fprintf('Estado C: %f\n', px(3));
fprintf('Estado D: %f\n', px(4));