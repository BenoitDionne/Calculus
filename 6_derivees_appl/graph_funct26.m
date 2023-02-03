close all;

% Graph of the fonction
x=0.02:0.01:3;
y=x.*log(x);
plot(x,y,'b')
grid on
hold on

% The origin is not on the graph
x=[0,0];
y=[0,0];
plot(x,y,'ob');

% The y axis
y=[-1,4];
x=[0,0];
plot(x,y,'k');

% The x axis
x=[-0.1,3];
y=[0,0];
plot(x,y,'k');

% labels and title
title('y=x ln(x)');
xlabel('x')
ylabel('y')

% set(gca,'xtick',[-5:2:5]);
axis([-0.1,3,-1,4])
