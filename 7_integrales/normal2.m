close all;

% graph of the normal density function
% exp(-(t-mu)^2/(2*sigma^2))/(sigma*sqrt(2*pi))
mu = 400;
sigma = 20;
x = mu-4*sigma:0.01:mu+4*sigma;
y = exp(-(x-mu).^2/(2*sigma^2))/(sigma*sqrt(2*pi));
plot(x,y,'b')
hold on
grid on

% The mean
z = 1/(sigma*sqrt(2*pi));
y = 0:z:z;
x = [mu,mu];
plot(x,y,'--r');
% str = sprintf('x=%d',mu);
% text(mu+3,0.001,str);
text(mu+2,0.001,'\mu');

% The standart deviation
z = exp(-(sigma).^2/(2*sigma^2))/(sigma*sqrt(2*pi));
y = 0:z:z;
x = [mu+sigma,mu+sigma];
plot(x,y,'--r');
% str = sprintf('x=%d',mu+sigma);
% text(mu+sigma+3,0.001, str);
text(mu+sigma+2,0.001,'\mu+\sigma');
x = [mu-sigma,mu-sigma];
plot(x,y,'--r');
% str = sprintf('x=%d',mu-sigma);
% text(mu-sigma+3,0.001,str);
text(mu-sigma+2,0.001,'\mu-\sigma');

% Shaded arrea
x1 = linspace(390,430,2);
y1 = 0*x1;
x2 = linspace(390,430,50);
y2 = exp(-(x2-mu).^2/(2*sigma^2))/(sigma*sqrt(2*pi));
fill([x1, fliplr(x2)], [y1, fliplr(y2)],[0.5,0.5,0.5],'LineStyle','none','FaceAlpha',0.3)

% title and labels
title('$\displaystyle y = f(x) = \frac{e^{(-(t-\mu)^2/(2 \sigma^2))}}{\sigma \sqrt{2 \pi}}$','Interpreter','latex');
xlabel('x');
ylabel('y');
