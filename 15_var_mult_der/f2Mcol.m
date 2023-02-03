clf

% The graph of  z = x y
[x,y] = meshgrid(-3:0.05:3,-3:0.05:3);
z = x.^4 - 6*(x.^2).*(y.^2) + (y.^4);
surf(x,y,z)

% The title and the labels
grid on;
xlabel('x')
ylabel('y')
zlabel('z')
title('z = x^4 - 6x^2 y^2 + y^4','FontSize',12)

