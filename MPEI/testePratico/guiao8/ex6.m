% a
clc

H = [0.8  0    0.3  0;
     0.2  0.9  0.2  0;
     0    0.1  0.4  0;
     0    0    0.1  1]
     
% b

x1 = [1; 0; 0; 0];
px1 = H^1000 * x1

% c

prob1 = H
prob2 = H^2
prob10 = H^10
prob100 = H^100

% d
% matriz Q
Q = H(1:3, 1:3)

% e
% matriz F

F = inv(eye(3) - Q)

% f
mediaPassos = sum(F)