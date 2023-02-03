close all;

% graph of e^(-x)
x=30:0.01:40;
y=exp(-x);
plot(x,y,'b');
hold on
grid on
text(33.2,2*10^(-8),'y = e^{-x}');

% graph of 10/x^5
y=10*x.^(-5);
plot(x,y,'r');
text(33.2,2.7*10^(-7),'y = 10 / x^5');

% x and y Labels
xlabel('x');
ylabel('y');
axis([30,40,-10^(-8),4.5*10^(-7)])
