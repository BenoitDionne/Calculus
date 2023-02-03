close all

subplot(2,2,1);

x1=-2*pi+0.1:0.01:-pi-0.1;
x2=-pi+0.1:0.01:-0.1;
x3=0.1:0.01:pi-0.1;
x4=pi+0.1:0.01:2*pi-0.1;

y=cot(x1);
plot(x1,y,'b')

hold on
grid on

y=cot(x2);
plot(x2,y,'b')

y=cot(x3);
plot(x3,y,'b')

y=cot(x4);
plot(x4,y,'b')

x=[-2*pi,-2*pi];
y=[-10,10];
plot(x,y,'--r')

x=[-pi,-pi];
plot(x,y,'--r')

x=[0,0];
plot(x,y,'--r')

x=[pi,pi];
plot(x,y,'--r')

x=[2*pi,2*pi];
plot(x,y,'--r')

% The theta axis
x = [-2*pi, 2*pi];
y = [0,0];
plot(x,y,'k')

title('y=cot(x)');
xlabel('\theta');
ylabel('y');
axis([-2*pi,2*pi,-10,10]);

subplot(2,2,2);

x1=-2*pi:0.01:-3*pi/2-0.1;
x2=-3*pi/2+0.1:0.01:-pi/2-0.1;
x3=-pi/2+0.1:0.01:pi/2-0.1;
x4=pi/2+0.1:0.01:3*pi/2-0.1;
x5=3*pi/2+0.1:0.01:2*pi;

y=sec(x1);
plot(x1,y,'b')

hold on
grid on

y=sec(x2);
plot(x2,y,'b')

y=sec(x3);
plot(x3,y,'b')

y=sec(x4);
plot(x4,y,'b')

y=sec(x5);
plot(x5,y,'b')

x=[-3*pi/2,-3*pi/2];
y=[-10,10];
plot(x,y,'--r')

x=[-pi/2,-pi/2];
plot(x,y,'--r')

x=[pi/2,pi/2];
plot(x,y,'--r')

x=[3*pi/2,3*pi/2];
plot(x,y,'--r')

% The theta axis
x = [-2*pi, 2*pi];
y = [0,0];
plot(x,y,'k')

title('y=sec(x)');
xlabel('\theta');
ylabel('y');
axis([-2*pi,2*pi,-10,10]);

subplot(2,2,3);

x1=-2*pi+0.1:0.01:-pi-0.1;
x2=-pi+0.1:0.01:-0.1;
x3=0.1:0.01:pi-0.1;
x4=pi+0.1:0.01:2*pi-0.1;

y=csc(x1);
plot(x1,y,'b')

hold on
grid on

y=csc(x2);
plot(x2,y,'b')

y=csc(x3);
plot(x3,y,'b')

y=csc(x4);
plot(x4,y,'b')

x=[-2*pi,-2*pi];
y=[-10,10];
plot(x,y,'--r')

x=[-pi,-pi];
plot(x,y,'--r')

x=[0,0];
plot(x,y,'--r')

x=[pi,pi];
plot(x,y,'--r')

x=[2*pi,2*pi];
plot(x,y,'--r')

% The theta axis
x = [-2*pi, 2*pi];
y = [0,0];
plot(x,y,'k')

title('y=csc(x)');
xlabel('\theta');
ylabel('y');
axis([-2*pi,2*pi,-10,10]);
