close all

% Graph of  y = F(x) = \beta/(x+\alpha)  for \beta = 1 and \alpha = 0.5

L = 12;

x=0:0.01:L;
y=x.*(x+0.5).^(-1);
plot(x,y,'b');
hold on
grid;

% The x axis
x=linspace(-4,L,2);
y=0*x;
plot(x,y,'k');

% The line y = 1
x=linspace(0,L,2);
y= 0*x + 1;
plot(x,y, '--k');

% The y axis
y=linspace(-0.2,1.2,2);
x=0*y;
plot(x,y,'k');

% The point (-\tau,0) = -2,0)
text(-2.2, -0.05, '-2');

% The function
text(2.5, 0.81, 'F(t) = t/(t+0.5)');

% The line from (-\tau, 0 ) = (-2,0) to (8,F(8))
x = linspace(-2,9,2);
u = 8/(8+0.5);
y = (u/10)*(x-8)+u;
plot(x,y,'--r');
text(1.5, 0.25,'droite passant par (-2,0) et (8,F(8)))');
text(1.5, 0.18,'de pente R(8)');

% The line from (-\tau, 0 ) = (-2,0) to (1,F(1)) which is
% the tangent line to the curve y=F(t) at t=1.
x = linspace(-2,2.8,2);
u = 1/(1+0.5);
y = (u/3)*(x-1)+u;
plot(x,y,'--r');
text(0.4, 1.17,'Tangent a la courbe y=F(t) au point');
text(0.4, 1.1,'(1,F(1)) de pente R(1)');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = F(t) = t / ( t + 0.5)');

