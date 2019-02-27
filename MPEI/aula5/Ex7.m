% (a)
lambda = 15;
k = 0; % nao recebe msg

probA = (lambda.^k / factorial(k)) * exp(-lambda)


% (b)
probB = 1;
for k = 0:10
  probB = probB - (lambda.^k / factorial(k)) * exp(-lambda);
endfor
probB