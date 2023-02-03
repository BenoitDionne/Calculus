close all

% Graph of  v = e^t
t=0:0.01:4;
v= exp(t);
plot(t,v,'b');
hold on
grid on;

% The t axis
t=linspace(0,4,2);
v=0*t;
plot(t,v,'k');

% The v axis
% v=linspace(0,210,2);
% t=0*v;
% plot(t,v,'k');

% The title and the labels
xlabel('t');
ylabel('v');
title('v = e^t');

axis([0, 4, -5, 60])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% Graph of  x = e^t - 1
t=0:0.01:5.4;
x= exp(t) - 1;
plot(t,x,'b');
hold on
grid on;

% The t axis
% t=linspace(0,5.4,2);
% x=0*t;
% plot(t,x,'k');

% The x axis
% x=linspace(0,210,2);
% t=0*x;
% plot(t,x,'k');

% The title and the labels
xlabel('t');
ylabel('x');
title('x = e^t - 1');

axis([0, 5.4, 0, 210])
