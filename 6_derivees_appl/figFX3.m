clf

% The graph of  y = x + 1/x^2

A1 = -8;
A2 = 8;
B1 = -10;
B2 = 30;
axis( [ A1, A2, B1, B2 ]);
% axis equal;

x = A1:0.01:-0.2;
y = x + x.^(-2);
plot(x,y,'b')
hold on
grid on

x = 0.2:0.01:A2;
y = x + x.^(-2);
plot(x,y,'b')

% The x axis
x = linspace(A1,A2,2);
y = 0.*x;
plot(x,y,'k')

% The y axis
y = linspace(B1,B2,2);
x = 0*y;
plot(x,y,'k');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = f(x) = x + 1/x^2')

