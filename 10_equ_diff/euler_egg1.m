% The figure euler_egg1a.png is produced with N = 10
% The figure euler_egg1b.png is produced with N = 100

close all

sel = @(t,q) 1 - 60*(20+t).^(-2).*q;

t0 = 0;
q0 = 0;
tN = 10;
N = 100;
h = (tN-t0)/N;

% We plot the solution
options = odeset('RelTol',1e-6,'AbsTol',[1e-5]);
[xr,yr] = ode113(sel,[t0 tN],[q0],options);
plot(xr,yr,'b');
hold on
grid on

title('q'' = 1 - 60 q / (20+t)^2');
xlabel('t')
ylabel('q')
% axis([0 10 0 18])

% We compute the numerical solution given by the Euler method

T = linspace(t0,tN,N+1);
W = [q0];
w0 = q0;
for (i=1:N)
  w0 = w0 + h*(1 - 60*w0/(20+T(i))^2);
  W = [W w0];
end

% We printe the first values of W
W(1)
W(2)
W(3)

% We draw the numerical solution given by the Euler method
plot(T,W,'r');

