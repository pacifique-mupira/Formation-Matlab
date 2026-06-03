%Series d'exercices sur l'indexation
clear; clc;
%% exercice 1
% V = [1 2 3 4 5];
% W = zeros(1,length(V));
% for i = 1:length(V)
%     W(i) = V(length(V) - i+1);
% end
% disp('Vecteur original');
% disp(V);
% disp('vecteur inverser');
% disp(W);

%% Exercice 2
% M = randi([1,10],5,5);
% trace_val = 0;
% for i = 1:size(M,1)
%     trace_val = trace_val + M(i,i);
% end
% disp('Matrice M : ')
% disp(M);
% fprintf('Trace : %d\n',trace_val)
%     
% 

%% Exercice 4
% M = randi([1,100],4,4);
% max_val = M(1,1); %initialisation de la valeur maximal
% max_ligne = 1;
% max_col = 1;
% 
% for i = 1:size(M,1) % parcours des lignes
%     for j = 1:size(M,2) % parcours des colonnes
%         if M(i,j) > max_val
%             max_val = M(i,j);
%             max_ligne = i;
%             max_col = j;
%         end
%     end
% end
% 
% disp('Matrice M: ')
% disp(M)
% fprintf('Maximum : %d, position : (%d,%d)', max_val,max_ligne,max_col);


%% Ecercice 4: Filtrage des notes par indexation logique

notes = randi([0,20], 1,20); % generationde 20 notes
disp('Notes originales: ');
disp(notes);
fprintf('\n Notes >= 10 : ');
disp(notes(notes>=10)); % indexation logique pour extraction

notes(notes < 5) = 5; % remplacement des notes inferieur à 5 par 5
fprintf('\n Après relèvement des notes < 5 à 5 :');
disp(notes);

%% Exercice 5: jeu de la vie simplifier
% %Grille 5x5 avec une forme de depart
% grille = zeros(5,5);
% grille(2,3) = 1;
% grille(3,3) = 1;
% grille(4,3) = 1;
% grille(3,2) = 1;
% nouvelle_grille = zeros(5,5);
% for i = 1:5
%     for j = 1:5
%         nb_voisins = 0;
%         %parcours des voisins
%         for di = -1:1
%             for dj = -1:1
%                 if di == 0 && dj == 0
%                     continue; % la cellulle elle meme
%                 end
%                 ni = i + di;
%                 nj= j + dj;
%                 
%                 %rester dans les bornes
%                 if ni >= 1 && ni <= 5 && nj >= 1 && nj <= 5
%                     if grille(ni,nj) == 1
%                         nb_voisins = nb_voisins + 1;
%                     end
%                 end
%             end
%         end
%         % regle de jeu de la vie
%         if grille(i,j) == 1
%             if nb_voisins == 2 || nb_voisins == 3
%                 nouvelle_grille(i,j) = 1; % survit
%             end
%         else
%             if nb_voisins == 3
%                 nouvelle_grille(i,j) = 1 ; % nait
%             end
%         end
%     end
% end
% 
% disp('Grille initiale : ')
% disp(grille);
% disp('Grille apres iteration :')
% disp(nouvelle_grille)