clf

colormap hsv

f = @(x,y) x.^2 - y.^2;
[X,Y] = meshgrid(-3:0.2:3,-3:0.2:3);
Z=f(X,Y);
mesh(X,Y,Z);

grid on
xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
title('x_3=f(x_1,x_2)=x_1^2 - x_2^2')
