close all;

% graph of M(t) = t^4/4 + t^{-2}/(-2) + 33/8 \ .
% and M'(t) = t^3 + t^{-3}

subplot(1,2,1)

t=2:0.01:8;
M = t.^4/4 - 1./(2*t.^2) + 33/8;
plot(t,M,'b')
grid on
hold on;
% text(4.1,63,'y=t^4/4 - t^{-2}/2 + 33/8');

% The x axis
t=linspace(2,8,2);
y=0*t;
plot(t,y,'k');

title('y=t^4/4 - 1/(2t^2) + 33/8')
xlabel('t')
ylabel('y')
axis([2,8,-50,1100])

subplot(1,2,2)
t=2:0.01:8;
M = t.^3 + t.^(-3);
plot(t,M,'b')
grid on
hold on;
% text(4.1,117,'y=t^3 + t^{-3}');

% The x axis
% t=linspace(2,8,2);
% y=0*t;
% plot(t,y,'k');

title('y = t^3 + t^{-3}')
xlabel('t')
ylabel('y')
