function [ P ] = van_der_waals(R, T, V, a, b)
% Calculate Van Der Waals gas pressure
n = 1;

P = ((n*R*T)/V-n*b) - (((n^2)*a)/(V^2));
end