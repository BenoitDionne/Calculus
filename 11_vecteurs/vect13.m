close all

% graph of the plane  z = 3 - (3/7)(x-2) + (1/7)(y-1)
[x,y] = meshgrid(-4:0.5:6,-4:0.5:6);
z = 3 - (3/7)*(x-2) + (1/7)*(y-1);
surf(x,y,z);
colormap winter
xlabel('x')
ylabel('y')
zlabel('z')
title('z = 3 - (3/7)(x-2) + (1/7)(y-1)');
hold on

% Draw a normal to the plan
s = linspace(0,1,2);
plot3(-1-3*s,-1+s,4-7*s,'r');
text(-4,0.5,-3,'{\rm perpendiculaire au plan}');

% Draw the vector  (-3,1,-7) = (-1,-3,0) x (-1,4,1)
plot3(-3*s,s,-7*s,'b');
text(-2.5,1,-7,'(-3,1,-7)');

% Draw the vector (-1,-3,0) parallel to the plane
plot3(-s,-3*s,0*s,'b');
text(-1,-3, -.5,'(-1,-3,0)');

% Draw the vetor (-1,4,1) parallel to the plane
plot3(-s,4*s,s,'b');
text(-1,4,1.5,'(-1,4,1)');

% The origin
text(0,0,0.7,'(0,0,0)');

% Equal scale for the axis
axis equal;
