clf

% colormap prism
[X,Y] = meshgrid(-3.5:.01:3.5,-3:.01:3);
Z = X.^2 + (Y-1).^2;
% [C,h] = contour(X,Y,Z);
[C,h] = contour(X,Y,Z,[1,2,3,4,6,8,10,11],'b');
set(h,'ShowText','on','TextStep',get(h,'LevelStep'));
% set(h,'ShowText','on');
grid on
xlabel('x')
ylabel('y')
title('z = x^2 + (y-1)^2')

hold on
t = linspace(0,2*pi);
x = 3*cos(t);
y = (3/sqrt(2))*sin(t);
plot(x,y,'k');
