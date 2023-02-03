clf;

% The graph of  y = x sqrt{5-x}

x = -6:0.01:5;
y = x.*sqrt(5-x);
plot(x,y,'b')
hold on
grid

% The x axis
x = linspace(-6,6,2);
y = 0.*x;
plot(x,y,'k')

% The y axis
y = linspace(-20,4.5,2);
x = 0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = f(x) = x sqrt(5-x)')
