clf

z=-2:0.01:-0.08;
y= z.^(-2).*exp(z);
plot(z,y,'b')
hold on

z= 0.08:0.01:9;
y= z.^(-2).*exp(z);
plot(z,y,'b')

grid on
xlabel('z')
ylabel('y');
title('z= e^z / z^2')

% x axis
x=linspace(-2,9,2);
y=0*x;
plot(x,y,'k')

% y axis
y=linspace(-1,100,2);
x=0*y;
plot(x,y,'k')

axis( [ -2, 9, -1, 100 ]);

