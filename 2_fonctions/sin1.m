% Graph of sin between -6 and 6

close all
x=-6:0.01:6;
y = sin(x);
plot(x,y,'b');
hold on;
grid on
xlabel('x');
ylabel('y');
title('y=sin(x)');

% x axis
x = -6:12:6;
y = x*0;
plot(x,y,'k')

% Horizontal line  y = 0.5
z = 0.5 + 0*x;
plot(x,z, '--r')

% y axis
y=-1;2;1;
x= y*0;
plot(x,y,'k');

% Section of the sin function used to define arcsin
x=-pi/2:0.01:pi/2;
y = sin(x);
plot(x,y,'g','LineWidth',2);
