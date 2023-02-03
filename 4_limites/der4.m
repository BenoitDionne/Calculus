close all;

% Graph of  y = sin(x) / x
x=-4:0.01:-0.1;
y = sin(x)./x;
plot(x,y,'b')
hold on
grid on

x=0.1:0.01:4;
y = sin(x)./x;
plot(x,y,'b')

% Plot the point of discontinuity
plot(0,1,'ob')

% The x axis
x=-4:8:4;
y=0*x;
plot(x,y,'k')

% The y axis
y=-0.5:2:1.5;
x=0*y;
plot(x,y,'k')

% The title and the labels
xlabel('x')
ylabel('y')
title('y = sin(x) / x')
