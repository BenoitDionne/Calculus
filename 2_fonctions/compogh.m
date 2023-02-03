% Graph of y = g(h(x)) = (sqrt(x))^2 - 1

close all
x=0:0.1:2;
y=x-1;
plot(x,y,'b')
hold on
grid on

% The x axis
x=-0.5:0.1:2;
y=0*x;
plot(x,y,'k')

% The y axis
y=-1.5:0.1:1.5;
x=0*y;
plot(x,y,'k')

% The labels and title
xlabel('x')
ylabel('y')
title('y = (sqrt(x))^2-1')
