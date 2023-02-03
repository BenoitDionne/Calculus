close all

% Graph of  y = x^3/(1+x^3)

x=-3:0.01:-1.03;
y= x.^3./(1+x.^3);
plot(x,y,'b');
hold on
grid on;
x=-0.97:0.01:3;
y= x.^3./(1+x.^3);
plot(x,y,'b');
text(1.5, 1.5, 'f(x) = x^3/(1+x^3)');

% The x axis
x=linspace(-3,3,2);
y=0*x;
plot(x,y,'k');

% The y axis
y=linspace(-8,8,2);
x=0*y;
plot(x,y,'k');

% The vertical asymptote at x = -1
y=linspace(-8,8,2);
x=0*y - 1;
plot(x,y, '--r');

% The title and the labels
xlabel('x');
ylabel('y');
title('y = x^3/(1+x^3)');

axis([ -3, 3, -8, 8])

