clf

[X,Y] = meshgrid(-1:.05:1);
Z = X.^2./(X.^2+Y.^2);

% meshes
meshc(X,Y,Z);
xlabel('x')
ylabel('y')
zlabel('z')
title('z = x^2 / (x^2 + y^2)')
grid on

% surface
clf
surf(X,Y,Z);
xlabel('x')
ylabel('y')
zlabel('z')
title('z = x^2 / (x^2 + y^2)')
grid on
