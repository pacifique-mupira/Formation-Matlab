%% 1. acquisition des données
clc; clear;
a = input('Valeur de a : ');
b = input('Valeur  de b : ');
%% 2. choix de l'opperation
fprintf("1. Addition\n2. Soustaction\n3. multiplication\n4. Division\n5. Exponentielle\n");

choix =input('Choisissez votre opération à effectuer: ');

%% 3. calcul de l'operation
switch choix
    case 1
        res = a + b;
        disp("Le resultat de votre opération vaut: " + num2str(res));
        
    case 2
        res = a - b;
        disp("Le resultat de votre opération vaut: " + num2str(res));
        
    case 3
        res = a * b;
        disp("Le resultat de votre opération vaut: " + num2str(res));
        
    case 4
        res = a / b;
        disp("Le resultat de votre opération vaut: " + num2str(res));
        
    case 5
        res = a ^ b;
        disp("Le resultat de votre opération vaut: " + num2str(res));
        
    otherwise
        disp('Opération invalide !!');
end