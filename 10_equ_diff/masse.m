% graph of p(t) = -t^4/16 + 5
% and p'(t) = -t^3/4

close all;

subplot(1,2,1)

t=0:0.01:5;
p= -t.^4/16 +5;
plot(t,p,'b')
grid on
hold on
% text(2.5,3.5,'y= -t^4/16  + 5');

% The t axis
t=linspace(0,5,2);
y=0*t;
plot(t,y,'k');

title('y= -t^4/16 + 5')
xlabel('t')
ylabel('p')
axis([0,5,-34,6])

subplot(1,2,2)

t=0:0.01:5;
p = -t.^3/4;
plot(t,p,'b')
grid on
hold on
% text(2,-3.5,'y=-t^3/4');

% The t axis
t=linspace(0,5,2);
y=0*t;
plot(t,y,'k');

title('y = -t^3/4')
xlabel('t')
ylabel('p')
axis([0,5,-31,2])
