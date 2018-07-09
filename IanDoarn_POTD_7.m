%% Problem of the day 7
%
% Ian Doarn
%
% 9/28/2017

x = linspace(-2*pi,2*pi,200);
y1 = sin(x);
y2 = 2*cos(x);

plot(x,y1,'r-o',x,y2,'b-d');
xlabel('-2\pi to 2\pi');
title('Graph of sin(x) and  2cos(x)');
legend('sin(x)','2cos(x)');