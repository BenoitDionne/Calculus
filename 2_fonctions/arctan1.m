% Graph of arctan between -1 and 1

close all
x = -15:0.01:15;
y = atan(x);
plot(x,y,'b')
hold on
grid on
xlabel('x')
ylabel('y')
title('y=arctan(x)=tan^{-1}(x)')

% The x axis
z=x*0;
plot(x,z,'k')

% The line y = pi/2
z=x*0 + pi/2;
plot(x,z,'--r')
text(0.5, pi/2 + 0.1,'\pi/2');

% The line y = -pi/2
z=x*0 - pi/2;
plot(x,z,'--r')
text(0.5, -pi/2 - 0.1,'-\pi/2');

% The y axis
y=-2:0.01:2;
x=0*y;
plot(x,y,'k')
