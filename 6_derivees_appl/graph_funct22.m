close all

% Graph of  y = 2/x - 6/x^3
x=-16:0.01:-0.1;
y= 2./x - 6./(x.^3);
plot(x,y,'b');
hold on
grid on

x=0.1:0.01:16;
y= 2./x - 6./(x.^3);
plot(x,y,'b');

% The x axis
x=-16:32:16;
y=0*x;
plot(x,y,'k');

% The y axis
y=linspace(-6,6,2);
x=0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x');
ylabel(['y']);
title('y = 2/x - 6/x^3');
axis([-16 16 -4 4]);
daspect([4 1 1])
