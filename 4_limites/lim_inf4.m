close all;

% The graph of  y = 2/(x-3)^2
x = 2.5:0.01:2.99;
y = 2*(x-3).^(-2);
plot(x,y,'b')
hold on
grid on
set(gca,'xtick',[2.5:0.25:3.5]);

x = 3.01:0.01:3.5;
y = 2*(x-3).^(-2);
plot(x,y,'b')

% The x axis
x = 2.5:1:3.5;
y = 0.*x;
plot(x,y,'k')

% the vertical asymptote x=3
y = -500:20500:20000;
x = 0*y + 3;
plot(x,y,'--r');

% The title and the labels
xlabel('x')
ylabel('y')
title('y = 2/(x-3)^2')
axis([2.5,3.5,-500,20000])
