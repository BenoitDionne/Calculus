close all;

% The graph of  p(t) = 2^t
t = -2:0.01:2;
p = 2.^t;
plot(t,p,'b')
grid on
hold on
text(1, 2.7, 'p = 2^t');

% The graph of the tangente to the curve p=2^t at (t,p)=(0,1).
m = log(2);
t= -2:4:2;
p = m*t + 1;
plot(t,p,'r')
text(0.7, 1.32, 'p = 0.6931... t + 1');

% t axis
t = -2:2:2;
p = 0*t;
plot(t,p,'k');

% p axis
p = -0.5:4.5:4;
t = 0*p;
plot(t,p,'k');

% The title and the labels
xlabel('t')
ylabel('p')
title('p(t) = 2^t')
