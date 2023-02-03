close all

subplot(1,2,1)

% Graph of p = 5 t^3 /3 - 5 /t + 46/3
t=1:0.01:3;
p= 5*t.^3 /3 - 5./t + 46/3;
plot(t,p,'b');
hold on
grid on;

% The t axis
% t=linspace(1,3,2);
% p=0*t;
% plot(t,p,'k');

% The p axis
% p=linspace(0,6,2);
% t=0*p;
% plot(t,p,'k');

% The title and the labels
xlabel('t');
ylabel('p');
title('p = 5 t^3 / 3 - 5 / t + 46 / 3');

axis([1, 3, 10, 60])

subplot(1,2,2)
% Graph of  pm = 5 t^2 + 5/t^2
t=1:0.01:3;
pm = 5*t.^2 + 5./t.^2;
plot(t,pm,'b');
hold on
grid on;

% The t axis
% t=linspace(1,3,2);
% pm=0*t;
% plot(t,pm,'k');

% The pm axis
% pm=linspace(0,10,2);
% t=0*pm;
% plot(t,pm,'k');

% The title and the labels
xlabel('t');
ylabel('p''');
title('p'' = 5 t^2 + 5 / t^2');

axis([1, 3, 7, 43])
