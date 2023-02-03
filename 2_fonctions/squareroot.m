% Graph of  y = sqrt(x) 

close all
x=0:0.01:3;
y = sqrt(x);
plot(x,y,'b');
hold on
grid on

% The x axis
x=-0.5:0.01:3;
y=0*x;
plot(x,y,'k');

% The y axis
y=-0.5:0.01:2;
x=0*y;
plot(x,y,'k')

% The labels and title
xlabel('x');
ylabel('y');
title('y=sqrt(x)')
