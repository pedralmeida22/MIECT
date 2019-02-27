%%function [out1, out2] = nomeFuncao(in1, in2)
%%.
%%. 
%%endfunction

function [probSimulacao] = mine(n, k, N)
  lancamentos = rand(n, N) > 0.5;
  sucessos = sum(lancamentos) == k;
  probSimulacao = sum(sucessos)/ N
end