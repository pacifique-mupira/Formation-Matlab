% calcul du cercle
% clear ; clc;
% r = input("La valeur : ");
% h = input("La hauteur: ");
% d = 2*r;
% c = 2*pi*r;
% v = c*h;
% disp(["Le diametre du cercle est de "," ", num2str(d);
% "La surface vaut :",
% " ",num2str(c);'Le volume vaut : '," ",num2str(v)]);

 phrase = 'bonjour tout le monde. je pense que vous allez bien. MATLAB est un bon language de programmation ';
% disp(length(phrase));
% nom = "perse";
%  age = 27;
%  sexe = "Masculin";
%  fprintf("%s Je m'appelle %s, j'ai %d, de sexe %s", phrase,nom,age,sexe) 

% mot1 = 'matlab';
% mot2 = 'MATLAB';
% disp(strcmp(mot1,mot2));
disp(strfind(phrase,"MATLAB"))