# a)
clc
fprintf('a)\n');

# probabilidade de ir à aula 
# nao faltar - 0 -> 0.7
# faltar - 1 -> 0.8

# matriz
#    0    1
T = [0.7 0.8; # 0
     0.3 0.2] # 1
     
isStochasticMatrix(T);

xa = [1; 0]  # vetor de estado

probA = T^2 * xa


# b)

fprintf('b)\n');

xb = [0; 1]

probB = T^2 * xb


# c)

fprintf('c)\n');

xc = [1; 0]

probC = T^15 * xc


% d)
fprintf('d)\n')
xd = [0.85; 0.15]

probD = zeros(1, 30);

for i = 1: 30
  temp = T^(i) * xd;
  probD(i) = temp(2);
endfor

plot(probD)