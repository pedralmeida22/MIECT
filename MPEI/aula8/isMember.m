function y = isMember (B, k, member)
  m = length(B);
  contains = 1;
  for i = 1  k
    member = [member num2str(i)];
    h = rem(string2hash(member, m)) + 1;
    if B(h) == 0
      contains = 0;
      break;
    endif
  endfor
endfunction
