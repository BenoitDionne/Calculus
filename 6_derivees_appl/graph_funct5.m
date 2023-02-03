clf

X = -(2 - 2*sqrt(1+5.2*50))/10.4;
t=linspace(0,X,100);
p= -5.2*t.^2 - 2*t + 50;
plot(t,p,'b')

hold on
grid on
xlabel('t')
ylabel('p');
title('p(t) = -5.2t^2 - 2t + 50')

% x axis
t=linspace(0,3,2);
p=0*t;
plot(t,p,'k')

