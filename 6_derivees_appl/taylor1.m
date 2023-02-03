clf

x=0.5:0.01:2;
y= x.^(-3);
plot(x,y,'b')
text(1.7,0.7,'y= x^{-3}')

hold on
grid on
xlabel('x')
ylabel('y');
title('Approximation de y= f(x) = x^{-3}')

% approximation lineaire
x=linspace(0.5,2,2);
y=-3*x+4;
plot(x,y,'r')
text(0.55,1.5,'y=-3x+4')

% approximation quadratique
x=0.5:0.01:2;
y = 10 - 15*x + 6*x.^2;
plot(x,y,'r')
text(1.3,2.4,'y=6x^2 - 15 x + 10')

% x axis
x=linspace(0.5,2,2);
y=0*x;
plot(x,y,'k')

