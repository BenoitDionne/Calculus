close all;

% graph of e^(x)-1
x=-2:0.01:2;
y=exp(x)-1;
plot(x,y,'b');
hold on
grid on
text(1.3, 2,'y = e^x - 1');

% graph of x^5
y=x.^5;
plot(x,y,'r');
text(1.3, 15,'y = x^5');

% a and y Labels
xlabel('x');
ylabel('y');
