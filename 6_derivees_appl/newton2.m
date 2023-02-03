close all;

x=-2.5:0.01:2;
y= exp(x); 
plot(x,y,'b')
text(0.1,0.8,'y = e^x')

hold on
grid on

y= x + 2; 
plot(x,y,'b')
text(-1,1.8,'y = x+2')

xlabel('x')
ylabel('y');
title('y= e^x et y = x + 2')

% x axis
x=linspace(-2.5,2,2);
y=0*x;
plot(x,y,'k')

% y axis
y=linspace(-1,8,2);
x=0*y;
plot(x,y,'k')
