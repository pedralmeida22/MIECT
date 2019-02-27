udata=load('u.data');  % Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u = udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores 
Nu = length(users); % Numero de utilizadores

fprintf('Creating new similarity matrix...\n');
  
J = newMinHash(u, users);       
save J_minhash_matrix J

%% Com base na distancia, determina pares com 
%% distancia inferior a um limiar pre-definido
fprintf('Searching for similar pairs...\n');
threshold = 0.4; %limiar de decisao
% Array para guardar pares similares (user1, user2, distancia) 
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu
    for n2= n1+1:Nu
        if areSimilar(n1, n2, J, threshold)
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k = k+1; 
        end
    end
end

SimilarUsers
fprintf('--- %d similar users\n', k-1);