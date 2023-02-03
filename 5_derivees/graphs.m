close all;

%figure
subplot(2,3,6)
x=-1:0.01:0.9;
y= x./(x-1);
plot(x,y,'b')
hold on
x=1.1:0.01:3;
y= x./(x-1);
plot(x,y,'b')
grid on
axis([-1 , 3 , -9, 9])
xlabel('x')
ylabel('y')
title('6')

%figure
subplot(2,3,2)
x=-1:0.01:0.9;
y= -1./(x-1).^2;
plot(x,y,'b')
hold on
x=1.1:0.01:3;
y= -1./(x-1).^2;
plot(x,y,'b')
grid on
axis([-1 , 3 , -9, 1])
xlabel('x')
ylabel('y')
title('3')

%%%%%%%%%%%%%%%%%%%%%%%%%
%figure
subplot(2,3,3)
x=-1:0.1:1;
y= 1./(2-x);
plot(x,y,'b')
hold on
x= 1:0.1:3;
y= 1./x;
plot(x,y,'b')
grid on
axis([-1 , 3 , -0.5, 1.5])
xlabel('x')
ylabel('y')
title('4')

%figure
subplot(2,3,4)
x=-1:0.01:1;
y= 1./(2-x).^2;
plot(x,y,'b')
hold on
x= 1:0.1:3;
y= -1./x.^2;
plot(x,y,'b')
grid on
axis([-1 , 3 , -1.5, 1.5])
xlabel('x')
ylabel('y')
title('1')

%%%%%%%%%%%%%%%%%%%%%%%%%
%figure
subplot(2,3,1)
x=-1:0.01:1;
y= 1-sqrt(1-x);
plot(x,y,'b')
hold on
x=1:0.01:3;
y= 1+sqrt(x-1);
plot(x,y,'b')
grid on
axis([-1 , 3, -1, 3])
xlabel('x')
ylabel('y')
title('2')

%figure
subplot(2,3,5)
x=-1:0.001:0.999;
y= 1./(2*sqrt(1-x));
plot(x,y,'b')
hold on
x=1.009:0.001:3;
y= 1./(2*sqrt(x-1));
plot(x,y,'b')
grid on
axis([-1, 3 , -9, 9])
xlabel('x')
ylabel('y')
title('5')
