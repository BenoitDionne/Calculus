close all

x=0:0.01:4*pi;
y= x + 3*cos(x);
plot(x,y,'b')

hold on
grid on
xlabel('\theta')
ylabel('y');
title('y= f(\theta) = \theta+cos(\theta)')

% x axis
x=linspace(0,14,2);
y=0*x;
plot(x,y,'k')

