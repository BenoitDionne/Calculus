close all

% Graphe of the function
x=0:0.01:200;
y=1+2*10^(-8)*x.^2 .*(240-x);
plot(x,y,'b');
grid on;
hold on

% Graphe of the average
x = [0,200];
y = [1.024, 1.024];
plot(x,y,'--r');

% The y axes
x = [0,0];
y = [1, 1.05];
plot(x,y,'k');
text(122, 1.022,'M= 1.05')

xlabel('x (cm)')
ylabel('y (gr/cm)')
title('y=1 + 2*10^{-8} x^2 (240-x)')

axis([0, 200, 1, 1.05])
