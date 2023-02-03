close all;

x=0:1:20;
y=16*(3/4).^x + 4;
plot(x,y,'o','MarkerFaceColor', 'b')

grid on
xlabel('i')
ylabel('g_i');
title('Graphe de la solution p_i = 16 (0.75)^i + 4')
