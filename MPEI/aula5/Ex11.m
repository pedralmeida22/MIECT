% (a)
media = 14;
dPadrao = 2;
N = 1e5;

simulacaoA = media + randn(1,N)*dPadrao;
simulacaoA = simulacaoA >= 12 & simulacaoA <= 16;
probA = sum(simulacaoA)/N


% (b)
simulB = media + randn(1,N)*dPadrao;
simulB = simulB >= 10 & simulB <= 18;
probB = sum(simulB)/N


% (c)
simulC = media + randn(1,N)*dPadrao >= 10;
probC = sum(simulC)/N