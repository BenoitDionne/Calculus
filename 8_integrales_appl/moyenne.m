close all;

%  f(x) = x - x^3
x = -1:0.01:1;
y = x - x.^3;
plot(x,y,'b')
hold on;
grid on;

% The x axis
x=[-1,1];
y=[0,0];
plot(x,y,'k')
text(0.5, -0.02, 'M=0');

% The y axis
x=[0,0];
y=[-0.4,0.4];
plot(x,y,'k')

title('f(x) = x - x^3');
xlabel('x');
ylabel('y');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% r(t) = 4t(3-t)
t = 0:0.01:2;
y = 4*t.*(3-t);
plot(t,y,'b')
hold on;
grid on;

t=[0,2];
y=[20/3,20/3];
plot(t,y,'--r')
text(1.7, 19/3, 'M=20/3');

% The t axis
t = [0,2];
y = [0,0];
plot(t,y,'k')

% The y axis
x=[0,0];
y=[-1,9];
plot(x,y,'k')

title('r(t) = 4t(3-t)');
xlabel('t');
ylabel('y');



