 clear;clc;
% mon premier script
% x= 0:0.1:2*pi;
% y = sin(x);
% plot(x,y,"LineWidth",2);
% xlabel("x");
% ylabel("sin(x)");
% grid on;
% title("sinus depuis un cicle" );
% disp(["Les jours de la semaine sont: " "soyerz le bienvenu"]);
% a = ["1.Lundi";"2.Mardi";"3.Mercrfedi";"4.Jeudi";"5.Vendredi";"6.Samedi";"7.Dimanche"];
% f = 71;
% t = (f-32)/1.8;
% disp("Temperature: "+t+"c");
% disp(a);
% disp(strlength(a));

% o = [1 2 7 3 4];
% disp(max(o));
% [maxo,location] = max(o);
% disp([maxo,location]);
% x = 0:pi/100:2*pi;
% y = sin(x);
% plot(x,y,"b-");
% grid on;
% title("Fonction sinus");
% xlabel("x");
% ylabel("sin(x)");
% 
% hold on; %pour relier deux graphiques
% y2 = cos(x);
% plot(x,y2,"g--");
% legend("sin(x)","cos(x)");
% hold off;

% 3-D Plots
% Three-dimensional plots typically display a surface defined by a function in two variables, z = f(x,y) .
% 
% To evaluate z, first create a set of (x,y) points over the domain of the function using meshgrid.
%surface en 3 dimensions
% [X,Y] = meshgrid(-2:.2:2);
% Z = X.*exp(-X.^2 - Y.^2);
% surf(X,Y,Z); %pou tracer une surface en 3 dimensions

% Subplots
% You can display multiple plots in different subregions of the same window using the subplot function.
% 
% The first two inputs to subplot indicate the number of plots in each row and column. 
% The third input specifies which plot is active.
% For example, create four plots in a 2-by-2 grid within a figure window. 

% t = 0:pi/10:2*pi;
% [X,Y,Z] = cylinder(4*cos(t));
% subplot(2,2,1); mesh(X); title("X");
% subplot(2,2,2); mesh(Y); title("y");
% subplot(2,2,3); mesh(Z); title("Z");
% subplot(2,2,4); mesh(X,Y,Z); title("X,Y,Z");