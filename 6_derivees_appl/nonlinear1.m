close all

% Graph of  y = \cos(x)

x=-1:0.01:6;
y=cos(x);
plot(x,y,'k');
text(1.5, 0.3, 'f(x) = cos(x)');
hold on
grid on;

% Graph of y = x
x=linspace(-1,6,2);
plot(x,x,'b');
text(3.4, 3.2, 'y = x');

% The x axis
x=linspace(-1,6,2);
y=0*x;
plot(x,y,'k');

% The y axis
y=linspace(-1,6,2);
x=0*y;
plot(x,y,'k');

% The intersection point is approximatively ( 0.7390851332, 0.7390851332)
x=linspace(0,0.7390851332,2);
y=0*x + 0.7390851332 ;
plot(x,y,'--k');
plot(y,x,'--k');
text(0.1, -0.2, '0.7390851332');

% The title and the labels
xlabel('x');
ylabel('y');
title('y = cos(x) et y = x');
