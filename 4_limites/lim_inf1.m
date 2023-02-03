close all;

% The graph of  y = 5 + exp(2-x/10)
x = 0:0.1:70;
y = 5+exp(2-x/10);
plot(x,y,'b')
hold on
grid on

% The x axis
x = 0:70:70;
y = 0.*x;
plot(x,y,'k')

% The horizontal line y=5
y = 0.*x +5;
plot(x,y, '--r')
text(10, 4.7, 'y = 5');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = 5 + e^{(2-x/10)}')
axis([0,70,4,14]);
