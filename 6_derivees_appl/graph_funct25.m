close all;

% Matlab seems to handle the vertical axis well (?)
x=-5:0.1:5;
y=x./(x.^3+1);
plot(x,y,'b')
grid on
hold on

% The vertical asymptote
y=[-5,5];
x=[-1,-1];
plot(x,y,'--r');

% The x axis
x=[-5,5];
y=[0,0];
plot(x,y,'k');

% The y axis
y=[-2,2];
x=[0,0];
plot(x,y,'k');

% labels and title
title('y=x/(x^3+1)');
xlabel('x')
ylabel('y')

set(gca,'xtick',[-5:2:5]);
axis([-5,5,-2,2])
