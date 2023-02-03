close all;

T0 = 1.5;
for i=1:7
  T0 = T0 - (T0^3-T0-2)/(3*T0^2-1)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% graph of y = t^3-t-1
t=0:0.01:2;
y=t.^3-t-1;
plot(t,y,'b')
grid on
hold on

% The x axis
t=linspace(0,2,2);
y=0*t;
plot(t,y,'k');

title('y=t^3-t-1');
xlabel('t');
ylabel('y');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% Graph of  y = F(x) = t^2/(1+t^2)

t=0:0.01:10;
y=t.^2./(1+t.^2);
plot(t,y,'b');
hold on
grid on

% The x axis
t=linspace(-2,10,2);
y=0*t;
plot(t,y,'k');

% The line y = 1
t=linspace(0,10,2);
y=0*t + 1;
plot(t,y, '--k');

% The y axis
y=linspace(-0.2,1.2,2);
t=0*y;
plot(t,y,'k');

% The point (-1,0)
text(-1.2, -0.05, '-1');

% The function
text(2.5, 0.83, 'F(t) = t^2/(t^2+1)');

% The line from (-1, 0 ) to (7,F(7))
t = linspace(-1,7.5,2);
u = 7^2/(7^2+1);
y = (u/8)*(t-7)+u;
plot(t,y,'--r');
text(1.6, 0.25, 'droite passant par (-1,0) et (7,F(7))');
text(1.6, 0.18, 'de pente R(7)');

% The line from (-1,0) to (T,F(T)) which is
% the tangent line to the curve y=F(t) at t=T.
t = linspace(-1,2.8,2);
u = T0^2/(1+T0^2);
y = (u/(T0+1))*(t-T0)+u;
plot(t,y,'--r');
text(0.4, 1.17,'Tangent a la courbe y=F(t) au point');
text(0.4, 1.1,'(T,F(T)), de pente R(T)');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = F(t) = t^2 / ( t^2 + 1)');
