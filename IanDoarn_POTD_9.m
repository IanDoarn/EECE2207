%% Problem Of The Day 9
% Ian Doarn
% 10/19/2017
%%

% create vector of 25 vaules from 1 to 10
vector = randi(10, 25, 1);
% set mu to 5
u = 5;
% define anonymous function that takes input of vector and mu
%% Function: s_dev
%
% $$y\:=\:f\left(x,\:\mu \right)\:=\:\sqrt[2]{\sum _{n=1}\left(x_n-\mu \right)^2\:}$$
%
%%
s_dev = @(x, u) sqrt(sum((x-u).^2));

% calculate values from anonymous function
y = s_dev(vector, u);

% display result
disp('y = ' + y)