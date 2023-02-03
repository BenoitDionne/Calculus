close all;

%%%%%%%%%%%%%%%%%%%%%%%%%
x=-0.5:0.01:0.9;
y= exp(x)./(x-1);
plot(x,y,'b')
hold on
grid on

x=-1.1:0.01:3;
y= exp(x)./(x-1);
plot(x,y,'b')
axis tight

% The x axis
x=linspace(-0.5,3,2);
y=0*x;
plot(x,y,'k')

% The y axis
y= linspace(-60,60,2);
x=0*y;
plot(x,y,'k')

% The vertical asymptote
y= linspace(-60,60,2);
x=0*y + 1;
plot(x,y,'--r')

% labels and title
xlabel('x')
ylabel('y')
title('y = e^x / (x-1)')

axis([-0.5 , 3 , -60, 60])
