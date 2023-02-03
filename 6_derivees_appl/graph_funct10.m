close all

% Graphe of y = x^3 - 3x + 3
x=-3:0.01:3;
y= x.^3 - 3*x + 3;
plot(x,y,'b')
hold
grid

% x-axis
x=[-3,3];
y=[0,0];
plot(x,y,'k')

% y-axis
x=[0,0];
y=[-15,25];
plot(x,y,'k')

% line x = -1
x=[-1,-1];
y=[0,5];
plot(x,y,'--k');
text(-1,-1,'-1')

% line x = 1
x=[1,1];
y=[0,1];
plot(x,y,'--k');
text(1,-1,'1')

% title and labels
title('y=x^3-3x+3')
xlabel('x')
ylabel('y')
