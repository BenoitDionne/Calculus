close all;

x=0:1:20;
y= 0.7.^x * 5;
plot(x,y,'o','MarkerFaceColor', 'b')

grid on
xlabel('i')
ylabel('b_i (unites de 10^5');
title('Graphe de la solution b_i = 0.7^i b_0')
