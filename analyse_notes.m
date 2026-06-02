clear;clc;
%% 1. demande du nombre des etudiant et matière
nombre_etudiant = input("Veillez saisir le nombre des étudiants: \n");
nombre_matiere = input("Saisissez aussi le nombre des matière : \n");
%% 2. generation de la matrice
notes = randi([0,20],nombre_etudiant,nombre_matiere);

disp(' ')

%% 3. afichage de la matrice
fprintf('\n---Matrice des notes---\n')
%entete des matrice
fprintf('Etudiants\t');

for j = 1:nombre_matiere
    fprintf('Mat%d\t',j)
end
fprintf('\n');

%Parcours de chaque etudiant
for i = 1:nombre_etudiant
    fprintf('Etudiant %d\t',i);
    for j = 1:nombre_matiere
        fprintf('%d\t',notes(i, j));
    end
    fprintf('\n');
end

disp(' ')

%% 4. clacul des moyennes

%moyenne etudiants
moyenne_etudiant = mean(notes,2);

%moyenne notes

moyenne_matiere = mean(notes,1);
disp(' ')

%% 5. affichages des moyennes
fprintf('---Moyenne par etudiant---\n')
for i = 1:nombre_etudiant
    fprintf('Etudiant %d : %.2f\n',i,moyenne_etudiant(i))
end

disp(' ');
disp(' ');
fprintf('---Moyennes par matière---\n')
for j = 1:nombre_matiere
    fprintf('Matière %d : %.2f\n',j,moyenne_matiere(j))
end

disp(' ');
%% 6. afichage du meilleur etudiant et de la matiere la plus difficile

[meilleure_moyenne,indice_meilleur] = max(moyenne_etudiant);
fprintf('\n Meilleur étudiant : Etudaint %d avec une moyenne de %.2f\n', indice_meilleur,meilleure_moyenne)

[moyenne_min,indice_matiere_difficile] = min(moyenne_matiere);
fprintf('Matière la plus difficile : Matière %d avec une moyenne de %.2f',indice_matiere_difficile,moyenne_min);

%% 7. Detection des etudiants ayant une note < 8

cond = notes < 8;               % matrice de 0 / 1 (si 1 note < 8)
a_une_note_basse = any(cond, 2);  % pour chaque ligne, 1 si au moins un element est vrai

fprintf('\nEtudiants ayant au moins une note < 8:\n');
for i = 1:nombre_etudiant
    if a_une_note_basse(i)
        fprintf('Etudiant %d\n',i)
    end
end

%% 8. Rattrapage: notes < 5 mises en 0, puis réaffichages
notes(notes<5) = 0;
fprintf('\n --- Matrice apres rattrapage(notes < 5 mises en 0) ---')
fprintf('Etudiant\t');
for j = 1:nombre_matiere
    fprintf('Mat%d\t',j)
end

fprintf('\n')
for i = 1:nombre_etudiant
    fprintf('Etudiant %d\t\t',i)
    for j = 1:nombre_matiere
        fprintf('%d\t',notes(i, j));
    end
    fprintf('\n')
end
