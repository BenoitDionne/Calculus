close all;

x=linspace(0:0.99,2);
y=0*x;
plot(x,y,'b')
hold on
grid on

plot([1],[0],'ob','MarkerFaceColor', 'b')

x=1.01:0.01:2;
y=1+exp(x-1);
plot(x,y,'b')

plot([1],[2],'ob')

% x axis
x = 1:1:2;
y = 0*x;
plot(x,y,'k')

xlabel('t')
ylabel('p')
title('Graphe de p')
% axis([0 2 -0.3 4])

