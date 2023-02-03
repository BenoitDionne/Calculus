close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Graph of  y = 2 t^2
t= 0.4:0.01:2;
y = 2*t.^2;
plot(t,y,'b')
text(0.6, 6.2, 'y = 2 t^2');
hold on
grid on
xlabel('t')
ylabel('y')

% The x axis
t=linspace(0.4,2,2);
y=0*t;
plot(t,y,'k')

% The secant through the point (1, 2) et (2, 2 * 2^2)
y = 6*(t-1)+2;
plot(t,y,'r')
text(0.6, 5.7, 'y-2 = 6(t-1)');

% The secant through the point (1, 2) et (1.5, 2 * 1.5^2)
y = 5*(t-1)+2;
plot(t,y,'r')
text(0.6, 5.2, 'y-2 = 5(t-1)');

% The secant through the point (1, 2) et (1.1, 2 * 1.1^2)
y = 4.2*(t-1)+2;
plot(t,y,'r')
text(0.6, 4.7, 'y-2 = 4.2(t-1)');

% The secant through the point (1, 2) et (1.01, 2 * 1.01^2)
y = 4.02*(t-1)+2;
plot(t,y,'r')
text(0.6, 4.2, 'y-2 = 4.02(t-1)');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% Graph of  x = e^{2t}
t= -0.2:0.01:1;
y = exp(2*t);
plot(t,y,'b')
text(0.1, 6.2, 'y = e^{2t}');
hold on
grid on
xlabel('t')
ylabel('y')

% The x axis
t=linspace(-0.2,1,2);
y=0*t;
plot(t,y,'k')

% The y axis
y=linspace(-0.5,8,2);
z=0*y;
plot(z,y,'k')

% The secant through the point (0, 1) et (1, e^2)
y = 6.3891*t+1;
plot(t,y,'r')
text(0.1, 5.7, 'y - 1 = 6.3891t');

% The secant through the point (0, 1) et (0.5, e^0.5)
y = 3.4366*t+1;
plot(t,y,'r')
text(0.1, 5.2, 'y - 1 = 3.4366t');

% The secant through the point (0, 1) et (0.1, e^0.1)
y = 2.2140*t+1;
plot(t,y,'r')
text(0.1, 4.7, 'y - 1 = 2.2140t');

% The secant through the point (0, 1) et (0.01 , e^0.01)
y = 2.0201*t+1;
plot(t,y,'r')
text(0.1, 4.2, 'y - 1 = 2.0201t');

axis([-0.2,1,-0.5,8])

