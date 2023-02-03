close all

% Graph of  y = (x+4)/e^x

x=-5:0.01:5;
y= (x+4).*exp(-x);
plot(x,y,'b');
hold on
grid on;

% The x axis
x=linspace(-5,5,2);
y=0*x;
plot(x,y,'k');

% The y axis
y=linspace(-8,22,2);
x=0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x');
ylabel('y');
title('y = (x+4)/e^x');

axis([ -5, 5, -8, 22])
