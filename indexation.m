%Series d'exercices sur l'indexation
clear; clc;
%% exercice 1
V = [1 2 3 4 5];
W = zeros(1,length(V));
for i = 1:length(V)
    W(i) = V(length(V) - i+1);
end
disp('Vecteur original');
disp(V);
disp('vecteur inverser');
disp(W);
