close all;

% The x axis
x=0.4:1.4:1.8;
y=0*x;
plot(x,y,'k')
hold on

% The y axis
% y=0:1:1;
% x=0*y;
% plot(x,y,'k')

% Graph of  x = 5 e^{-2t}
x=0.4:0.01:1.8;
y = 5*exp(-2*x);
plot(x,y,'b')

% The secant through the point (1,5e^{-2}) and (1.1,5e^{-2.2})
m = (5*exp(-2) - 5*exp(-2.2))/(1-1.1);
x = 0.4:1.4:1.8;
y = 5*exp(-2) + m*(x-1);
plot(x,y,'g')
u = [0.6,0.68];
v = [2.2,2.2];
plot(u,v,'g')
text(0.7, 2.2, ['secante passant par (1,5 e^{-2}) et ' ...
                    '(1.1,5 e^{-2.2})'])

% The secant through the point (1,5e^{-2}) and (1.001, 5e^{-2.002})
m = (5*exp(-2) - 5*exp(-2.002))/(1-1.001);
y = 5*exp(-2) + m*(x-1);
plot(x,y,'r')
v = [2,2];
plot(u,v,'r')
text(0.7, 2.0, ['secante passant par (1,5 e^{-2}) et ' ...
                '(1.001,5 e^{-2.002})'])

% The title and the labels
grid on;
xlabel('t (heures)')
ylabel('x (1 unite = 10 bacteries)')
title('x = 50 e^{-2t}')
