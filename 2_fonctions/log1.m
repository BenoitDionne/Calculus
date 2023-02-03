% Graphs of  y=3^x  and  y = log_3(x)

close all
x=-1:0.01:2;

% Graph of y = 3^x
y=3.^x;
plot(x,y,'--b');
text(1,5,'y = 3^x');
hold on
grid on

% Graph of y = log_3(x)
x=0.005:0.01:2;
y=log(x)/log(3);
plot(x,y,'b')
text(0.2,-2,'y = log_3(x)');

% The x axis
x=linspace(-1,2,3);
y=0.*x;
plot(x,y,'k')

% The y axis
y=linspace(-5,10,15);
x=0.*y;
plot(x,y,'k')

% Labels and title
xlabel('x')
ylabel('y')
title('y=3^x et y=log_3(x)')
axis([-1,2,-5,10]);
