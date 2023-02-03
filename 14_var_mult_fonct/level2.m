clf

colormap prism
[X,Y] = meshgrid(-5:.01:5,-5:.01:5);
Z = sqrt(X.^2 - Y.^2);
[C,h] = contour(X,Y,Z,[0, 0.5, 1, 2, 3]);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('z = x^2 - y^2')
