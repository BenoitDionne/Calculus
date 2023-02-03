close all;

% Graph of  y = sin(1/x)
x=0.0001:0.00001:1;
y = sin(1./x);
plot(x,y,'b')
hold on
grid on

% The x axis
x= -0.1:1.1:1;
y=0*x;
plot(x,y,'k')

% The y axis
y=-1.1:2.2:1.1;
x=0*y;
plot(x,y,'k')

% The title and the labels
xlabel('x')
ylabel('y')
title('y = sin(1/x)')
axis([-0.1,1,-1.1,1.1])
