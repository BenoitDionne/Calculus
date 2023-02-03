format long

%  Solution of f(x) = 0.1 t - 0.2 e^{-t} - 0.8
f = @(t) 0.1*t - 0.2*exp(-t) - 0.8;
fp = @(t) 0.1 + 0.2*exp(-t);

t0 = 8.5;
for i=1:7
  t0 = t0 - f(t0)/fp(t0)
end
