% 2 motores
p2 = nchoosek(2,2)* p.^2 * (1-p).^(2-2) % = p.^2

% 4 motores
p4 = nchoosek(4,3) * p.^3 * (1-p).^(4-3) + nchoosek(4,4) * p.^4 * (1-p).^(4-4)
 % = 4p.^3 - 3p.^4
 
% p4/p2 < 1 e mais seguro viajar num aviao de 4 motores