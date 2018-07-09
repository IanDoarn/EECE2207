%% Problem Set 2
% Ian Doarn
% 9/5/2017

%% Problem 1
% 315 people have to be transported using buses that have 37 seats. By typing
% one line (command) in the Command Window, calculate how many seats will
% remain empty if enough buses with the order to transport all the people. (Hint:
% use Matlab built in function ceil.)

remainingSeats = ceil(315 / (37 * 9));
disp("Remaining Seats = " + remainingSeats);

%% Problem 2
% assign the number 316,501.6732 a and calculate the following by typing one
% command:
%
% (a) Round the number to the nearest hundredth.
%
% (b) Round the number to the nearest thousand
%

% a)
fprintf('%.2f\n', 316501.6732)
% b)
fprintf('%.3f\n', 316501.6732)


%% Problem 3
% The number of combinations Cn;r of taking r object out of n objects is given by
%
% a) Determine how many combinations are possible in a lottery game for selecting 6 numbers that are drawn out for 49.
% 
% b) Using the following formula, determine the probability of guessing two out of the six drawn numbers
%

% A
((factorial(49)) / (factorial(6)*factorial(49-6)))
%
% B
x = ((factorial(6)) / (factorial(2)*factorial(6-2)));
y = ((factorial(43)) / (factorial(4)*factorial(43-4)));
z = ((factorial(49)) / (factorial(6)*factorial(49-6)));
(x*y) / z


%% Problem 4
% The spread of a computer virus through a computer network can be modeled by
%
% N(t) = 20e0:15t
% 
% where N(t) is the number of computers infected and t time in minutes.
%
% a) Determine how long it takes for the number of infected computers to double
%
% b) Determine how long it takes for 1 million computers to be infected.

%% a)
time = 0:10;
e = exp(1);
numComp = 20*e*exp(0.15*time);
plot(time, numComp);

%% b)
time2 = 0:10;
e2 = exp(1);
N2 = 1000000;
numComp2 = N2*e*exp(0.15*time2);
plot(time2, numComp2);


%% Problem 5
% The voltage dierence Vab between two points a and b in the Wheatstone Bridge circuit is:
% 
% Calculate the voltage dierence when V = 14 volts, R1 = 120.5 , R2 = 119.3, R3 = 121.2, and R4 = 118.8

V = 14;
R1 = 120.5;
R2 = 119.3;
R3 = 121.2;
R4 = 118.8;

V_ab = V*((R1*R3-R2*R4)/((R1+R2)*(R3+R4)));

disp("V_ab = " + V_ab)
