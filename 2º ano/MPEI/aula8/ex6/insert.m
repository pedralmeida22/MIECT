function y = insert (B, k, member)
  m = length(B);
  for i = 1 : k
    member = [member num2str(i)];
    h = rem(string2hash(member, m)) + 1;
    B(h) = 1;
  endfor
endfunction
