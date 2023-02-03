close all;

% The graph of  y = 2/(x^3-9)
x = 2:0.01:2.99;
y = 2*(x.^2-9).^(-1);
plot(x,y,'b')
hold on
grid on

x = 3.01:0.01:4;
y = 2*(x.^2-9).^(-1);
plot(x,y,'b')

% The x axis
x = 2:2:4;
y = 0.*x;
plot(x,y,'k')

% the vertical asymptote x=3
y = -35:70:35;
x = 0*y + 3;
plot(x,y,'--r');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = 2/(x^2-9)')
axis([2,4,-35,35])
