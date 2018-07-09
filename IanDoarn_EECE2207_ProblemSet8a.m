%% Problem Set 8a
%
% Ian Doarn
%
% 9/28/2017

%% Problem 1
%


syms x
f = x.^2-2*x.^2-10*sin(x).^2-exp(0.9*x);
fp = diff(x);
x = linspace(-1, 4);
plot(x,f,'-', x, diff(f), '--');
%plot(x, diff(x), '--');

%% Problem 2
%
