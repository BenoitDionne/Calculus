close all

subplot(1,2,1)

% Graph of  M = 4 t^(1/2) + 5
t=0:0.01:3;
M= 4*sqrt(t) + 5;
plot(t,M,'b');
hold on
grid on;

% The t axis
% t=linspace(0,3,2);
% M=0*t;
% plot(t,M.'k');

% The M axis
% M=linspace(4,12,2);
% t=0*M;
% plot(t,M,'k');

% The title and the labels
xlabel('t');
ylabel('M');
title('M = 4 t^{1/2} + 5');

axis([0, 3, 5, 12])

subplot(1,2,2)
% Graph of  Mp = 2 t^(-1/2)
t=0.01:0.01:3;
Mp = 2./sqrt(t);
plot(t,Mp,'b');
hold on
grid on;

% The t axis
% t=linspace(0.05,3,2);
% Mp=0*t;
% plot(t,Mp,'k');

% The Mp axis
% Mp=linspace(0,10,2);
% t=0*Mp;
% plot(t,Mp,'k');

% The title and the labels
xlabel('t');
ylabel('M''');
title('M'' = 2 t^{-1/2}');

% axis([0, 3, 0, 20])
