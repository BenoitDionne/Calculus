close all;

% Graph of  y = g(x) = x^2 + 1
x=-0.5:0.01:2;
y = x.^2 + 1;
plot(x,y,'b')
hold on
grid on

% The x axis
x=-0.5:2.5:2;
y=0*x;
plot(x,y,'k')

% The line y = 2
x=-0.5:2.5:2;
y=0*x + 2;
plot(x,y, '--r')

% The y axis
y=-1:6:5;
x=0*y;
plot(x,y,'k')

% The line x = 1
y=-1:6:5;
x=0*y + 1;
plot(x,y, '--r')

% The title and the labels
xlabel('x')
ylabel('y')
title('y = g(x) = x^2 + 1')

% g(x_1) with x_1 = 0.4
text(0.38,-0.22,'x_1');
text(-0.21, 1.13,'g(x_1)');
x=0:0.4:0.4;
y=0*x + 1.16;
plot(x,y, '--r')
y=0:1.16:1.16;
x=0*y + 0.4;
plot(x,y, '--r')

% g(x_2) with x_2 = 0.7
text(0.68,-0.22,'x_2');
text(-0.21, 1.45,'g(x_2)');
x=0:0.7:0.7;
y=0*x + 1.49;
plot(x,y, '--r')
y=0:1.49:1.49;
x=0*y + 0.7;
plot(x,y, '--r')

% g(x_3) with x_3 = 0.9
text(0.88,-0.22,'x_3');
text(-0.21, 1.79,'g(x_3)');
x=0:0.9:0.9;
y=0*x + 1.81;
plot(x,y, '--r')
y=0:1.81:1.81;
x=0*y + 0.9;
plot(x,y, '--r')
