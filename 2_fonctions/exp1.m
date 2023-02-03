% exponential fonctions
close all

% y = 3^x
x=-2:0.1:2;
y=3.^x;
plot(x,y,'-b')
hold on
grid on
text(1.5, 8, 'y=3^x');

% y = 2^x
y = 2.^x;
plot(x,y,'-.b')
text(1.5, 2.5, 'y=2^x');

% y = (1/2)^x
y=0.5.^x;
plot(x,y,'--b')
text(-1.4, 3.1, 'y = (1/2)^x');

% The x axis
y=0.*x;
plot(x,y,'k')

% The y axis
y=-0.5:0.1:9;
x=0.*y;
plot(x,y,'k')

% Labels and title
xlabel('x')
ylabel('y')
title('Quelques fonctions exponentielles');
axis([-2,2,-0.5,9]);
