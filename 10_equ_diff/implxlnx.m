close all

% Graph of the function of t = t(x) = ln|x| + x - 1
f = @(x) log(abs(x)) + x - 1;

x=0.01:0.01:10.5;
t=f(x);
plot(x,t,'b')
grid on
hold on

title('t = t(x) = ln|x| + x - 1')
xlabel('x')
ylabel('t')

% x axis
xx=[0, 10];
tt=[0, 0];
plot(xx,tt,'k')
axis([0,10,-5,12])

% Graph of the inverse function of t = t(x) = ln|x| + x - 1
figure

plot(t,x,'r')
grid on
hold on
plot(x,t,'b')
text(8.5,7,'x = x(t)');
text(5.5,9,'t = t(x)');

title('x = x(t)')
xlabel('t')
ylabel('x')

% t axis
tt=[-6, 12];
xx=[0, 0];
plot(xx,tt,'k')

% x axis
xx=[-6, 12];
tt=[0, 0];
plot(xx,tt,'k')

% the line x=t
tt=[-6, 12];
xx =tt;
plot(xx,tt,'--k')

axis([-5,12,-5,12])
