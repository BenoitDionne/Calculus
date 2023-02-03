clf

x=0:1:20;
y= 0.8.^x;
plot(x,y,'o','MarkerFaceColor', 'b')

grid on
xlabel('n')
ylabel('p_n (unites de 10^7)');
title('Graphe de la solution p_n = 0.8^n p_0')
