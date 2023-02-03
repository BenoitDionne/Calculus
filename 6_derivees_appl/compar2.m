close all;

% graph of e^(-x)
x=3:0.01:10;
y=exp(-x);
plot(x,y,'b');
hold on
grid on
text(4.4,0.015,'y= e^{-x}');

% graph of 10/x^5
y=10*x.^(-5);
plot(x,y,'r');
text(3.1,0.005,'y = 10 / x^5');

% x and y Labels
xlabel('x');
ylabel('y');
