close all;

% graph of ln(x)
x=1:0.01:1000;
y=log(x);
plot(x,y,'b');
hold on
grid on
text(700,13,'y = ln(x)');

% graph of x^{1/5}
y=x.^(2/5);
plot(x,y,'r');
text(700,6,'y = x^{1/5}');

% a and y Labels
xlabel('x');
ylabel('y');
