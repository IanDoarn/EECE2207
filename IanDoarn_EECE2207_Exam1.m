%% Exam 1
%
% Name: Ian Doarn
%
% Date: 9/21/2017
%
%% Problem 1
%
Vo = 36;
R = 2500;
C = 1600;
t = 0:5:500;
format long g
for i = 1:500
    Vc = 36 * (1-exp(1).^(-t/(R*C)));
    if(Vc >= 0.0027)
        if(Vc <= 0.0028)
            disp("Time = " + t(i));
            break;
        end
    end
end

%% Problem 2
%
% part a

E = [0 0 0 0 0; 0 0 0 0 0; 0 0 1 60 0; 0 0 2 30 -6; 0 0 3 0 -12];

% part b
%

a = [3, 9, -0.5, 3.6, 1.5]';
b = [12, 0.8, 6, 5, -7.4]';

F = horzcat(E, a, b);

% part c
%
% Logical indexing
Z = logical([0 0 0 0 0 0 0 ;0 0 0 0 0 0 0;0 0 1 1 1 1 1; 0 0 1 1 1 1 1; 0 0 1 1 1 1 1 ]);
% get only values when value is 1 in matrix Z
F(Z);

% part d
%
% F > 0 will be the logical equivalent of all values greater than 0
F(F > 0)

%% Problem 3
%
% Vector 0.1<=V<=1L increments of 0.01
V = 0.1:0.01:1;
T = 300;
a = 1.39;
b = 0.039;
R = 0.08026;

Pi = [0:(length(V))];
Pw = [0:(length(V))];

for i=1:length(V)
    Pi(i) = ideal_gas(R, T, V(i));
    Pw(i) = van_der_waals(R, T, V(i), a, b);
end

percent_error = [0:length(V)];

for i=1:length(V)
    error = ((Pi(i) - Pw(i)/(Pw(i)))) * 100;
    percent_error(i) = error;
end

disp("Percent Error: "+((sum(percent_error) / length(V)) / 100)+"%");

%% Problem 4
%
r_1 = [5, 23];
r_2 = [12, 40];

[r, th] = addVecPol(r_1(1), r_1(2), r_2(1), r_2(2));

disp("r = " + r);
disp("theta = " + th)
    