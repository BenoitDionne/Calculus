close all

% Graph of  P = -\frac{5}{1+t} + 5
t=0:0.01:20;
P= -5./(1+t) + 5;
plot(t,P,'b');
hold on
grid on;

% The t axis
% t=linspace(0,20,2);
% P=0*t;
% plot(t,P,'k');

% The P axis
% P=linspace(0,5,2);
% t=0*P;
% plot(t,P,'k');

% The title and the labels
xlabel('t');
ylabel('P');
title('P = -5 / (1+t) + 5');

% axis([0, 20, 0, 5])
