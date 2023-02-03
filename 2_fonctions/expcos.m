% Graph of g(t) = e^{t} cos(2 \pi t)
close all;

t=0:0.01:3;
g = exp(t).*cos(2*pi*t);
plot(t,g,'b');
hold on;
grid on;
xlabel('t');
ylabel('g');
title('g(t)=e^t cos(2 \pi t)');

% graph of the "amplitude"  \pm e^{-t}
g = exp(t);
plot(t,g, '--r');
plot(t, -g, '--r');
text(1.65,-8,'h=-e^t');
text(1.65,7.5,'h=e^t');

% graph of cos(2 pi t)
g = cos(2*pi*t);
plot(t,g, '--g');
text(2.3,-2,'cos(2\pi t)');

% x axis
t=0:3:3;
g = t*0;
plot(t,g,'k')

% y axis
g=-1;2;1;
t= g*0;
plot(t,g,'k');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph of e^{-t} cos(2 pi t)
figure

t=0:0.01:6;
W = exp(-t).*cos(2*pi*t);
plot(t,W,'b');
hold on;
grid on
xlabel('t');
ylabel('W');
title('W(t)=e^{-t} cos(2 \pi t)');

% graph of the "amplitude"  \pm e^{-t}
W = exp(-t);
plot(t,W, '--r');
plot(t, -W, '--r');
text(0.5,0.7,'W=e^{-t}');
text(0.5,-0.7,'W=-e^{-t}');

% x axis
t=0:6:6;
w = t*0;
plot(t,w,'k')

% y axis
w=-1;2;1;
t= w*0;
plot(t,w,'k');
