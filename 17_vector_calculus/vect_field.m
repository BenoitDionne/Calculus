close all

[X,Y] = meshgrid(-2:0.5:2,-2:0.5:2);
U1 = X;
V1 = Y;
quiver(X,Y,U1,V1);
hold on
grid on
text(-2.8,2,'A','FontSize',14,'FontWeight','bold');

figure
U2 = Y;
V2 = -X;
quiver(X,Y,U2,V2);
hold on
grid on
text(-2.8,2,'B','FontSize',14,'FontWeight','bold');

figure
U3 = -Y;
V3 = 0*X;
quiver(X,Y,U3,V3);
hold on
grid on
text(-2.8,2,'C','FontSize',14,'FontWeight','bold');

figure
U4 = 1 + 2*Y;
V4 = 1 + 2*X;
quiver(X,Y,U4,V4);
hold on
grid on
text(-2.8,2,'D','FontSize',14,'FontWeight','bold');
