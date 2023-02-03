clf

% The graph of  y = sin^2(x) - 2 cos(x)

x = -8:0.01:8;
y = ( sin(x) ).^2 - 2* cos(x);
plot(x,y,'b')
hold on
grid on

% The x axis
x = linspace(-8,8,2);
y = 0.*x;
plot(x,y,'k')

% The y axis
y = linspace(-2.5,2.5,2);
x = 0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = f(x) = sin^2(x) - 2 cos(x)')

