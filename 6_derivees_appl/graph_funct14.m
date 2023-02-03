close all;

t=-1:0.01:1;
T= (1-t.^2).*exp(t);
plot(t,T,'b')

hold on
grid on
xlabel('t')
ylabel('T');
title('T(t)= (1-t^2)e^t')

% y axis
y=linspace(0,1.4,2);
x=0*y;
plot(x,y,'k')

