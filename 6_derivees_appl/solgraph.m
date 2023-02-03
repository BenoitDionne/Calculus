close all;

x=0:1:20;
y= 1.1.^x;
plot(x,y,'o','MarkerFaceColor', 'b')

grid on
xlabel('n')
ylabel('p_n (unites de 10^7)');
title('Graphe de la solution p_n = 1.1^n p_0')
