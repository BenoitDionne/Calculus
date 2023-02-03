clf

% The graph of  z = x y
[x,y] = meshgrid(-2:0.05:4,-3:0.05:3);
z = (x-1).^2 - (y.^2);
surf(x,y,z)

% To use LateX
% set(0,'defaultTextInterpreter','latex');

% The title and the labels
grid on;
xlabel('x')
ylabel('y')
zlabel('z')
title('z = (x-1)^2 - y^2','FontSize',12)

