function [ P ] = ideal_gas(R, T, V)
% Calculate Ideal gas pressure
n = 1;

P = (n*R*T)/(V);
end