% Graph of  y = h(g(x)) = sqrt(x^2 - 1)

close all
x=1:0.01:3;
y=sqrt(x.^2-1);
plot(x,y,'b');
hold on
grid on

x=-3:0.01:-1;
y=sqrt(x.^2-1);
plot(x,y,'b');

% The x axis
x=-3:0.01:3;
y=0*x;
plot(x,y,'k')

% The y axis
y=-0.5:0.01:3;
x=0*y;
plot(x,y,'k');

% The labels and title
xlabel('x')
ylabel('y');
title('y = h(g(x)) = sqrt(x^2-1)');
