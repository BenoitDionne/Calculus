close all;

x=0:1:20;
y= 0.8.^x*(3-15)+15;
plot(x,y,'o','MarkerFaceColor', 'b')
hold on
grid on

% the line y = 15
x=0:20:20;
y=0*x+15;
plot(x,y,'--k')

xlabel('n')
ylabel('p_n (unites de 10^3)');
title('Graphe de la solution p_i = 0.8^n (p_0- 15) + 15')

