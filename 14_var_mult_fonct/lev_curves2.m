clf

colormap prism
[X,Y] = meshgrid(-3:.01:3,-3:.01:3);
Z = X.^2 - Y.^2;
[C,h] = contour(X,Y,Z,[-5,-4,-3,-2,-1,0,1,2,3,4,5]);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2)
grid on
xlabel('x_1')
ylabel('x_2')
title('x_3 = x_1^2- x_2^2')
