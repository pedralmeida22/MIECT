%    s    n   c
T = [0.7  0.2  0.3; % s
     0.2  0.3  0.3; % n
     0.1  0.5  0.4] % c
     
x = [1; 0; 0];

probChuva = T^2 * x;
chuva = probChuva(3)

% c

n = 20;

Tpow = T;

evo = zeros(9, n);
evo(:, 1) = Tpow(:);

for i=2: n
   Tpow = Tpow * T;
   evo(:, i) = Tpow(:);
endfor

figure;
plot(evo');

% d
% ...