function h = hashFunction(s, k)
  h = string2hash([s num2str(1:k)]);
endfunction
