close all;

t=[0,1,2,3,4,5,6,7,8,9,10];
y=[1.07, 1.145, 1.28, 1.305, 1.435, 1.63, 1.78, 1.87, 2.14, 2.42, 2.4];
plot(t,y,'ob','MarkerFaceColor', 'b');
xlabel('t')
ylabel('y')
title('taux de croissance instantane en fonction du temps')
set(gca,'ytick',[1:0.25:2.5]);
grid on

% relative rate
z=[10.11, 11.18, 12.40, 13.74, 15.01, 16.61, 18.27, 20.17, 22.01, 24.45,...
26.85];
y./z

figure

t=[0,1,2,3,4,5,6,7,8,9,10];
plot(t,z,'ob','MarkerFaceColor', 'b');
xlabel('t')
ylabel('z')
title('taux de croissance relatif en fonction du temps')
grid on
