function DX = vectorfield3(t,X)
    DX(1,1) = (X(1,1) -1).*(X(2,1)-2);
    DX(2,1) = (X(1,1)-2).*X(2,1);
end

% To be use with
%
% vectorfield(@vectorfield3, 'x = f_1(x,y) , y = f_2(x,y)','x','y',0,3,-1,3,3)
%

% I have used my program to draw vector fields because it gives better 
% vector fields.

% close all
% 
% [X,Y] = meshgrid(0:0.25:3,-1:0.25:3);
% DX = (X-1).*(Y-2);
% DY = (X-2).*Y;
% quiver(X,Y,DX,DY, 1.3);
% grid on
% hold on
% plot(1,0,'.b','MarkerSize',15)
% plot(2,2,'.b','MarkerSize',15)
% axis([0,3,-1,3])
% text('Interpreter','latex', 'String','$x$', 'Position',[1.5,-1.4],...
%      'FontSize',14)
% text('Interpreter','latex', 'String','$y$', 'Position',[-0.3,1],'FontSize',14)

