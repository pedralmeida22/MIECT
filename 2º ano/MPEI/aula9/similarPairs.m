function y = similarPairs(Set, J, threshold)
  %% Com base na distancia, determina pares com
  %% distancia inferior a um limiar pre-definido
  
  setSize = length(Set);
  
  % Array para guardar pares similares (user1, user2, distancia)
  SimilarUsers= zeros(1,3);
  k= 1;
  for n1= 1:setSize,
    for n2= n1+1:setSize,
      if J(n1 < n2) < threshold
        SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)];
        k= k+1;
      end
    end
  end

  numSimilarUsers = length(SimilarUsers);
  fprintf('Número de pares de utilizadores com distâncias inferiores ao limiar %1.1f: %d\n', threshold, numSimilarUsers) 
  fprintf('\nUser 1 ID\tUser 2 ID\tJaccard Distance\n')
  for n = 1 : numSimilarUsers
      fprintf('%d\t%d\t%f\n', SimilarUsers(n, 1), SimilarUsers(n,2), SimilarUsers(n,3));
  end
  
endfunction
