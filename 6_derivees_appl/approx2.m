close all;

% Graph of  y = sin(x)
x=-0.5:0.01:2.5;
y=sin(x);
plot(x,y, 'b')
hold on
grid on;
text(2.55, 0.55, 'y = sin(x)');

% Graph of y = x
y=x;
plot(x,y,'r');
text(2, 1.8, 'y = x');

% Graph of  y = x - x^3 / 6;
y= x - x.^3 / 6;
plot(x,y,'r');
text(2.5, 0.2, 'y = x - x^3/6');

% Graph of  y = x - x^3 / 6 - x^5 / 120;
y=x - x.^3 / 6 + x.^5 /120;
plot(x,y,'r');
text(2.55, 0.8, 'y = x - x^3/6 + x^5/120');

% The x axis
x=-0.5:4.5:4;
y=0*x;
plot(x,y,'k')

% The y axis
y=-1:3.5:2.5;
x=0*y;
plot(x,y,'k')

% The title and the labels
xlabel('x');
ylabel('y');
title('polynômes de Taylor de sin(x) de degré plus petit que 6');
