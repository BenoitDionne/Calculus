close all

X0 = [1.3 ; 1];
options = odeset('RelTol',1e-6,'AbsTol',[1e-5]);
[t, X] = ode113(@prepro,[0 100],X0,options);

plot(t,X(:,1),'b');
hold on
grid on
title('x = x(t)');
xlabel('t')
ylabel('x')

% t axis
tt = [0 100];
xx = [0 0];
plot(tt,xx,'k');

figure

plot(t,X(:,2),'b');
hold on
grid on
title('y = y(t)');
xlabel('t')
ylabel('y')

% t axis
tt = [0 100];
xx = [0 0];
plot(tt,xx,'k');


function DX = prepro(t,X)
    DX(1,1) = X(1,1).*(1 - X(1,1)).*(X(1,1) - 0.5) - (1/8)*X(1,1).*X(2,1);
    DX(2,1) = -0.9*X(2,1) + X(1,1).*X(2,1);
end

