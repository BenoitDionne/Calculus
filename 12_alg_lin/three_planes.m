close all

X=linspace(-1,2,21);
Y=X;
[x,y] = meshgrid(X,Y);

% first plane (in red)
z = 1-2*x-y;
CO1(:,:,1) = ones(21); %  red
% CO1(:,:,1) = ones(21).*linspace(0.8,1,21); % reddish
CO1(:,:,2) = zeros(21); %  green
CO1(:,:,3) = zeros(21); %  blue
surf(x,y,z,CO1,'FaceAlpha',0.5)    %  EdgeColor = 'none'
hold on

% second plane (in green)
z=1-x-2*y;
CO2(:,:,1) = zeros(21); % red
CO2(:,:,2) = ones(21); % green
CO2(:,:,3) = zeros(21); % blue
surf(x,y,z,CO2,'FaceAlpha',0.5)

% third plane (in (blue)
z=(1-x-y)/3;
CO3(:,:,1) = zeros(21); %  red
CO3(:,:,2) = zeros(21); %  gree
CO3(:,:,3) = ones(21); % blue
surf(x,y,z,CO3,'FaceAlpha',0.5)

xlabel('x_1')
ylabel('x_2')
zlabel('x_3')
% text(-0.5,2,-3,'x_1 + 2 x_2 + x_3 = 1')
% text(-1,1.1,3,'2 x_1 + x_2 + x_3 = 1')
% text(-0.75,2,-0.5,'x_1 + x_2 + 3 x_3 = 1')
