% gerar string

function y = generateString()
    alphabet = ['a':'z' 'A':'Z'];
    y = alphabet(randi([1,length(alphabet)],1,randi([3,20])));
endfunction