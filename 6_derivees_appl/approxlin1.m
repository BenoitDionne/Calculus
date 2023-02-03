clf;

% Graph of  y = x^2 and y = 1 +2(x-1) near x=1

x=0:0.01:2;
y= x.^2;
plot(x,y,'b');
hold on
grid on;
text(1.2, 2.7, 'y = f(x) = x^2');

% The tangent line
x=linspace(0,2,2);
y= 1 + 2*(x-1);
plot(x,y,'r');
text(0.41, -0.3, 'y = p(x) = 1+2(x-1)');

% The x axis
x=linspace(0,2,2);
y=0*x;
plot(x,y,'k');

% The y axis
y=linspace(-0.5,5,2);
x=0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x');
ylabel('y');
title('y = x^2 et y = 1 + 2(x-1)');
