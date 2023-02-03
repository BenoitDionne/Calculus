clf

% The graph of  y = x - 2 sin(x)

x = 0:0.01:3*pi;
y = x - 2 * sin(x);
plot(x,y,'b')
hold on
grid

% The x axis
x = linspace(0, 10,2);
y = 0.*x;
plot(x,y,'k')

% The y axis
y = linspace(-2,10,2);
x = 0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = f(x) = x - 2 sin(x)')

