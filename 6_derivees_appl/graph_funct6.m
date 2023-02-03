clf

x=-5:0.01:10;
y= x.^3 - 6*x.^2 - 15*x + 3;
plot(x,y,'b')

hold on
grid on
xlabel('x')
ylabel('y');
title('Graphe de y= x^3 - 6 x^2 - 15 x + 3')

% x axis
x=linspace(-5,10,2);
y=0*x;
plot(x,y,'k')

% y axis
y=linspace(-200,300,2);
x=0*y;
plot(x,y,'k')

