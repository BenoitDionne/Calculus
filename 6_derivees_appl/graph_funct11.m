clf;

x=-2:0.01:2;
y= (1-x).*exp(x); 
plot(x,y,'b')

hold on
grid on
xlabel('x')
ylabel('y');
title('y= (1-x) e^x')

% x axis
x=linspace(-2,2,2);
y=0*x;
plot(x,y,'k')

% y axis
y=linspace(-8,2,2);
x=0*y;
plot(x,y,'k')
