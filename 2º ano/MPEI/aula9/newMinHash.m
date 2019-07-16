function J = newMinHash(u, users)
     Nu = length(users); % Numero de utilizadores
    
    Set = cell(Nu,1); % Usa celulas
    for n = 1:Nu % Para cada utilizador   
        
        % Obter filmes
        indice = find(u(:,1) == users(n));
        
        Set{n} = [Set{n} u(indice,2)];
    end
    Set{1}
endfunction
