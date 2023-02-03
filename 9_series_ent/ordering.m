close all

x =-0.4:0.01:0.4;
y = 1./(1+x);
plot(x,y,'b')
text(-0.3,1.45,'I');
hold on
grid on

y = (1+x).^(1/8);
plot(x,y,'r')
text(-0.3,1.15,'II');

y = sqrt(1 + x/2);
plot(x,y,'g')
text(-0.3,0.99,'III');

y = 1./sqrt(1 + x);
plot(x,y,'c')
text(-0.3,0.89,'IV');

% The x axis
% x = [-0.4,0.4];
% y = 0*x;
% plot(x,y,'k')

% The y axis
y = [0.6 , 1.8];
x = 0*y;
plot(x,y,'k')

% labels and title
xlabel('x')
ylabel('y')
axis([-0.4 0.4 0.6 1.8]);


