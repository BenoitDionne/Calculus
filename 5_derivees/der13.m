close all;

% The graph of  y = x^2
x = 1.5:0.01:4.5;
y = x.^2;
plot(x,y,'b')
hold on
text(4.05, 19.3, 'y = x^2');

% The graph of the tangente to the curve y=x^2 at x=3.
y = 6.*x - 9;
plot(x,y,'r')
text(2.05, 2.5, 'y = 6x + 9');

% The title and the labels
grid on;
xlabel('x')
ylabel('y')
title('y = x^2')
