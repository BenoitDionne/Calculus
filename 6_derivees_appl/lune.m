clf;

dd = @(x) -1.075* 10^(-3)*x.^2 + 5.*x + 100;
vv = @(x) -2.15*10^(-3)*x + 5;

% position  d(t) = -1.075\times 10^{-3} t^2 + 5 t + 100
subplot(2,1,1)
t = 0:0.01:4700;
d = dd(t);
plot(t,d)
title('deplacement')
xlabel('t (s)')
ylabel('d (m)')
grid on

% velocity v(t) = d'(t) = -2.15\times 10^{-3} t + 5
subplot(2,1,2)
t = [0,4700];
v = [vv(0), vv(4700)];
plot(t,v)
title('vitesse')
xlabel('t (s)')
ylabel('v (m/s)')
grid on

% critical point for the maximum height
t1 = 5/(2.15*10^(-3))

% height at t = t1 
h1 = dd(t1)

% time at 100 m
t2 = 5/(1.075*10^(-3))

% velocity at t = t2
v2 = vv(t2)

% time at t = 0 m
t3 = (-5 - sqrt( 5^2 + 4*1.075*10^(-3)*100))/(-2*1.075*10^(-3))

% velocity at t = t3
v3 = vv(t3)
