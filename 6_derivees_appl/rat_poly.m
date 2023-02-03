close all;

% Graph of  y = 1/((x-1)(x-2))
x=-1.5:0.001:0.937;
y = ((x-1).*(x-2)).^(-1);
plot(x,y,'b')
hold on
grid;

x=1.073:0.001:1.927;
y = ((x-1).*(x-2)).^(-1);
plot(x,y,'b')

x=2.063:0.001:4.5;
y = ((x-1).*(x-2)).^(-1);
plot(x,y,'b')

% The x axis
x=-1.5:6:4.5;
y=0*x;
plot(x,y,'k')

% The y axis
y=-15:30:15;
x=0*y;
plot(x,y,'k')

% The line x = 1
x=0*y + 1;
plot(x,y, '--k')

% The line x = 1
x=0*y + 2;
plot(x,y, '--k')

% The title and the labels
xlabel('x');
ylabel('y');
title('y = 1/((x-1)(x-2))');
axis( [-1.5, 4.5, -15, 15]);
