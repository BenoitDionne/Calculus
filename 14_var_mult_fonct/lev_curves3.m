close all;

colormap prism
[X,Y] = meshgrid(-5:.01:5,-5:.01:5);
Z = (1+X.^2 + Y.^2).^(-1);
[C,h] = contour(X,Y,Z,[1,0.9,0.5,0.25,0.1,0.05]);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2)
grid on
xlabel('x')
ylabel('y')
title('z = 1/(1+x^2+y^2)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% surf(X,Y,Z)
[X,Y] = meshgrid(-5:.1:5,-5:.1:5);
Z = (1+X.^2 + Y.^2).^(-1);
mesh(X,Y,Z)
% colormap hsv
% colorbar
grid on
xlabel('x')
ylabel('y')
title('z = 1/(1+x^2+y^2)')

