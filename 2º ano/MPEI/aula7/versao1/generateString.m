% gerar string aleatoria

%function [str] = generateString(min, max, letras)
  %length = randi[(min max)]
  %str = ''
  %for i=1: length
    %str(i) = letras(ceil(rand()*52))
  %endfor
%endfunction


function y = generateString()
    alphabet = ['a':'z' 'A':'Z'];
    y = alphabet(randi([1,length(alphabet)],1,randi([3,20])));
endfunction
