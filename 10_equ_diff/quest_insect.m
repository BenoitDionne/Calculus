close all

% Graph of  T =  20 + 10 cos(2 pi(t-90)/182.5)
t = 0:0.01:365;
T = 20 + 10*cos(2*pi*(t-90)/182.5);
plot(t,T,'b');
hold on
grid on;

% The T axis
% T = linspace(5,35,2);
% t = 0*T;
% plot(t,T,'k');

% The mean of the sinusoidal function
t = linspace(0,365,2);
T = 0*t + 20;
plot(t,T,'r');

% The title and the labels
xlabel('t');
ylabel('T');
title('T =  20 + 10 cos(2 \pi(t-90) / 182.5)');

axis([0, 365, 7, 33])

% Initial condition at t = 0
C = 0.1 -0.02*(0-90) - (1.825/(2*pi))*sin(2*pi*(0-90)/182.5)
L = 0.02*(30-90) + (1.825/(2*pi))*sin(2*pi*(30-90)/182.5) + C

% initial condition at t = 151
C = 0.1 -0.02*(151-90) - (1.825/(2*pi))*sin(2*pi*(151-90)/182.5)
L = 0.02*(300-90) + (1.825/(2*pi))*sin(2*pi*(300-90)/182.5) + C

