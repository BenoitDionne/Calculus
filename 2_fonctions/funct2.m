% Graph of  y = x^3 -2 * x + 1

close all
x=-2:0.01:2;
y=x.^3-2*x+1;
plot(x,y,'b')
hold on
grid on

% The x axis
x = [-2, 2];
y = 0*x;
plot(x,y,'k')

% The y axis
y = [-3, 5];
x = 0*y;
plot(x,y,'k')

% labels and title
xlabel('x')
ylabel('y')
title('y=x^3 -2 x + 1')
