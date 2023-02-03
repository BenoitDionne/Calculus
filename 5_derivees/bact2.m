close all;

% The x axis
x=-0.5:5.5:5;
y=0*x;
plot(x,y,'k')
hold on
grid on

% The y axis
y=-2:7:5;
x=0*y;
plot(x,y,'k')

% Graph of  x = 5 e^{-2t}
x=0:0.01:5;
y = 5*exp(-2*x);
plot(x,y,'b')

% The secant through the point (1,5e^{-2}) and (4,5e^{-8})
m = (5*exp(-2) - 5*exp(-8))/(1-4);
x=0:5:5;
y = 5*exp(-2) + m*(x-1);
plot(x,y,'r')
u = [0.6,1];
v = [3.7,3.7];
plot(u,v,'r')
text(1.05, 3.8, ['secante passant par (1,5 e^{-2}) et ' ...
              '(4,5 e^{-8})'])

% The secant through the point (1,5e^{-2}) and (3,5e^{-6})
m = (5*exp(-2) - 5*exp(-6))/(1-3);
y = 5*exp(-2) + m*(x-1);
plot(x,y,'g')
v = [3.2,3.2];
plot(u,v,'g')
text(1.05, 3.3, ['secante passant par (1,5 e^{-2}) et ' ...
                '(3,5 e^{-6})'])

% The secant through the point (1,5e^{-2}) and (2,5e^{-4})
m = (5*exp(-2) - 5*exp(-4))/(1-2);
y = 5*exp(-2) + m*(x-1);
plot(x,y,'m')
v = [2.6,2.6];
plot(u,v,'m')
text(1.05, 2.7, ['secante passant par (1,5 e^{-2}) et ' ...
              '(2,5 e^{-4})'])

% The title and the labels
xlabel('t (heures)')
ylabel('x (1 unite = 10 bacteries)')
title('x = 50 e^{-2t}')
axis([-0.5,5,-2,5])
