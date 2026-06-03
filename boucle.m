% %notion des boucles
clear; clc;
% %% 1. Boucle for
% 
% % boucle sur un vecteur
% for i = 1:5
%     fprintf('Iteration %d\n',i)
% end
% disp(' ');


% %Parcourir un vecteur
% 
% V = [10 20 30 40];
% 
% for element = V
%     disp(element*2)
% end
%



% % Boucles imbriquées
% 
% M = randi([1,10],3,4);
% for i = 1:size(M,1)
%     for j = 1:size(M,2)
%         fprintf('M(%d,%d) = %d\n', i , j ,M(i,j));
%     end
% end
%


%table de multiplication

% for i = 1:10
%     disp('  ')
%     disp(' ')
%     for j = 1:10
%         fprintf('%d x %d = %d\n',i,j,i*j);
%     end
% end


%Triangles d'etoiles
% n = input('Entrez le nombre des etoiles: \n');
% for i = 1:n
%     for j = 1:i
%         fprintf(' * ');
%     end
%     fprintf('\n');
% end

%Trouver valeur
% M = randi([1,50],5,5);
% disp(M);
% v = input('Valeur à chercher compris entre 1 et 50 :\n');
% trouve = false;
% for i = 1:5
%     for j = 1:5
%         if M(i,j) == v
%             fprintf('Valeur trouver à la position (%d,%d)\n',i,j)
%             trouve = true;
%             break;  % sortie de la boucle interne
%         end
%     end
%     if trouve
%         break; % sortie de la boucle externe
%     end
%     
% end 
% if ~trouve
%     disp('Valeur introuvée');
% end

  
% jeu de lancer

continuer = true;

while continuer
    fprintf('\n Nouvelle serie de 4 lancers :\n');
    for i = 1:4
        de = randi(6);
        fprintf('Lancer %d : %d\n', i,de);
    end
    
    reponse = input('Voulez-vous relancer? (o/n): \n','s');
    if lower(reponse) ~= 'o'
        continuer = false;
    end
end
disp('Merci d''avoir jouer');
        




% % Préalocation
% 
% n = 100;
% %Mauvaise preallocation
% % resultat = [];
% % for i = 1:n
% %     resultat(i) = i^2;
% % end
% 
% %bonne preallocation
% resultat = zeros(1,n);
% for i = 1:n
%     resultat(i) = i^2;
%     disp(resultat(i));
% end

%% 2. Boucle while

% x = input('Veillez entrer un nombre positif : \n');
% while (x<10)
%     disp('Le nombre doit être superieur à 10');
%     x = input('Veillez entrer un nombre positif : \n');
%     
% end
% fprintf('Bravo!! Vous avez saisi %d\n',x);


% compte a rebour
% n = input('Entrez un nombre : \n');
% while n>=0
%     disp(n)
%     n = n-1;
% end


% Nombre mistere
% 
% secret = randi(100);
% essaie = 0; 
% essaie_max = 7;
% nombre = input('Entrer votre nombre :\n');
% while secret ~= nombre && essaie < essaie_max
%     nombre = input('Entrer votre nombre :\n');
%     essaie = essaie+1;
%     if (secret > nombre)
%         disp('Valeur inferieur');
%     else
%         disp('Valeur superieur');
%     end
%     if essaie > essaie_max
%         break;
%     end
% end
% fprintf('Bravo!!! Le nombre secret est %d obtenu apres %d essaies',secret,essaie);




% somme des chiffre
% n = input('Entrer un nombre entier positif: \n');
% somme = 0;
% while n>0
%     chiffre = mod(n,10);
%     somme = somme + chiffre;
%     n = floor(n/10);
% end
% fprintf('La somme des chiffres est %d\n',somme);

