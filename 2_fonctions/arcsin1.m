% Graph of arcsin between -1 and 1

close all

x = -1:0.01:1;
y = asin(x);
plot(x,y,'b')
hold on
grid on
xlabel('x')
ylabel('y')
title('y=arcsin(x)=sin^{-1}(x)')

% The x axis
z=x*0;
plot(x,z,'k')

% The y axis
y=-2:0.01:2;
x=0*y;
plot(x,y,'k')
