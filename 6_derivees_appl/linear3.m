close all

x=0:1:20;
y=0.5.^x;
plot(x,y,'o','MarkerFaceColor', 'b')

grid on
xlabel('i')
ylabel('y_i');
title('Graphe de la solution p_i = 0.5^i p_0')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

x=0:1:120;
y=0.5*x;
plot(x,y,'b')

grid on
xlabel('y')
ylabel('z');
title('Graphe de la fonction generatrice z=0.5 y')


