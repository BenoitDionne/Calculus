close all;

% The graph of  y = e^{-x} / x
x = -3:0.001:-0.036;
y = exp(-x) .* x.^(-1);
plot(x,y,'b')
hold on
grid on

x = 0.034:0.001:2;
y = exp(-x) .* x.^(-1);
plot(x,y,'b')

% The x axis
x = -3:5:2;
y = 0.*x;
plot(x,y,'k')

% The y axis
y = -30:60:30;
x = 0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = e^{-x}/x')
