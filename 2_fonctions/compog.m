% Graph of y = g(x) = x^2 - 1

close all
x=-2:0.01:2;
y=x.^2 -1;
plot(x,y,'b')
hold on
grid on

% The x axis
y=0*x;
plot(x,y,'k')

% The y axis
y=-1.5:0.01:3;
x=0*y;
plot(x,y,'k')

% The labels and title
xlabel('x');
ylabel('y');
title('y=g(x) = x^2-1')
