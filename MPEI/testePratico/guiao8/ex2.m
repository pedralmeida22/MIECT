# a

fprintf('a)\n');
#     A    B     C
T = [1/3  1/4    0;   # A
     1/3  11/20  1/2; # B
     1/3  1/5    1/2]# C
     
isStochasticMatrix(T)
     
# b
fprintf('b)\n');

x = [60/90; 15/90; 15/90]

# c
fprintf('b)\n');

n30 = T^30 * x;

fprintf('num A: %.0f\n', n30(1) * 90);
fprintf('num B: %.0f\n', n30(2) * 90);
fprintf('num C: %.0f\n', n30(3) * 90);

# d
fprintf('d)\n');

y = [30/90; 30/90; 30/90]
n30 = T^30 * y;

fprintf('num A: %.0f\n', n30(1) * 90);
fprintf('num B: %.0f\n', n30(2) * 90);
fprintf('num C: %.0f\n', n30(3) * 90);