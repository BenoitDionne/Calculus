close all;

% Graph of  x = 5 e^{-2t}
x=0:0.01:5;
y = 5*exp(-2*x);
plot(x,y,'b')
hold on
grid on

% The x axis
x=-0.5:5.5:5;
y=0*x;
plot(x,y,'k')

% The y axis
y=-0.5:5.5:5;
x=0*y;
plot(x,y,'k')

% The title and the labels
grid on;
xlabel('t (heures)')
ylabel('x (1 unite = 10 bacteries)')
title('x = 50 e^{-2t}')
axis([-0.5,5,-0.5,5])
