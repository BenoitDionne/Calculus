close all;

x=-10:0.01:-0.2;
y= (2*x-3)./(x.^3);
plot(x,y,'b')
hold on
grid on

x= 0.2:0.01:10;
y= (2*x-3)./x.^3;
plot(x,y,'b')

% The x axis
x=linspace(-10,10,2);
y=0*x;
plot(x,y,'k')

% The y axis
y= linspace(-4,4,2);
x=0*y;
plot(x,y,'k')

% labels and title
xlabel('x')
ylabel('y')
title('y = 2 / x^2 - 3 / x^3')

axis([-10 , 10 , -4, 4])
daspect([4 1 1])

% $$$ subplot(1,2,1)
% $$$ x=-2:0.01:-0.01;
% $$$ y= (2*x-3)./x.^3;
% $$$ plot(x,y)
% $$$ hold on
% $$$ x= 0.01:0.01:5;
% $$$ y= (2*x-3)./x.^3;
% $$$ plot(x,y)
% $$$ grid on
% $$$ axis tight
% $$$ 
% $$$ % The x axis
% $$$ x=linspace(-2,5,2);
% $$$ y=0*x;
% $$$ plot(x,y,'--')
% $$$ 
% $$$ % The y axis
% $$$ y= linspace(-20,20,2);
% $$$ x=0*y;
% $$$ plot(x,y,'--')
% $$$ 
% $$$ % labels and title
% $$$ xlabel('x')
% $$$ ylabel('y')
% $$$ title('y = 2 / x^2 - 3 / x^3')
% $$$ 
% $$$ axis([-2 , 5 , -4, 6])
% $$$ 
% $$$ %%%%%%%%%%%%%%%%%%%%%%%%%
% $$$ % Zoom on one part of the previous graph.
% $$$ 
% $$$ subplot(1,2,2)
% $$$ x= 0.01:0.01:5;
% $$$ y= (2*x-3)./x.^3;
% $$$ hold on
% $$$ plot(x,y)
% $$$ grid on
% $$$ axis tight
% $$$ 
% $$$ % The x axis
% $$$ x=linspace(0,5,2);
% $$$ y=0*x;
% $$$ plot(x,y,'--')
% $$$ 
% $$$ % The y axis
% $$$ y= linspace(-20,20,2);
% $$$ x=0*y;
% $$$ plot(x,y,'--')
% $$$ 
% $$$ % labels and title
% $$$ xlabel('x')
% $$$ ylabel('y')
% $$$ title('y = 2 / x^2 - 3 / x^3')
% $$$ 
% $$$ axis([0 , 5 , -1, 1])
