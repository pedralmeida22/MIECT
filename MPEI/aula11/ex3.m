n = 20; % num estados
M = rand(n, n);

sumM = sum(M);
sumM = repmat(sumM, [n, 1]);
M = M./sumM;

isStochasticMatrix(M);

x = [1; zeros(n-1, 1)];

prob20 = M^20 * x
prob40 = M^40 * x
prob100 = M^100 * x