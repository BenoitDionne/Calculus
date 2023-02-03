% Contour plot for z = sqrt(36-4*x.^2 - 9*y.^2);
% We use elliptique coordinates because de domain is not square
% as required by the contour function

clf

colormap prism
[T,R] = meshgrid(0:.1:2*pi,0:.1:1);
X = 3*R.*cos(T);
Y = 2*R.*sin(T);
Z = real(sqrt(36 - 4*X.^2 - 9*Y.^2));
[C,h] = contour(X,Y,Z,[0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6]);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x_1')
ylabel('x_2')
title('x_3 = (36-4x_1^2-9 x_2^2)^{1/2}')
