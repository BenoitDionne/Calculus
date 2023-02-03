% Graph of arccos between -1 and 1

close all
x = -1:0.01:1;
y = acos(x);
plot(x,y,'b')
hold on
grid on
xlabel('x')
ylabel('y')
title('y=arccos(x) = cos^{-1}(x)')

% The x axis
z=x*0;
plot(x,z,'k')

% The y axis
y=-0.5:0.01:4;
x=0*y;
plot(x,y,'k')
