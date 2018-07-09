%% Exam 2 Fall 2017 (Ian Doarn)

%% Problem 1
% Your Code for Problem 1 Starts Here!!!! 
R = 8.3145;
n = 1;
V = 1:10;
T = [100 200 300 400];
ideal_gas_1 = (n*R*T(1)) ./ V;
ideal_gas_2 = (n*R*T(2)) ./ V;
ideal_gas_3 = (n*R*T(3)) ./ V;
ideal_gas_4 = (n*R*T(4)) ./ V;
plot(V, ideal_gas_1, 'r',V, ideal_gas_2, 'b',V, ideal_gas_3, 'g',V, ideal_gas_4, 'y');
xlabel('pressure Pa');
ylabel('Volume m^3');
legend('ideal-gas-1 = (n*R*100)/V;','ideal-gas-2 = (n*R*200)/V;','ideal-gas-3 = (n*R*300)/V;','ideal-gas-4 = (n*R*400)/V;');

%% Problem 2
% Your Code for Problem 2 Starts Here!!!!
syms x y z
eq1 = -4*x + 3*y + z == -18.2;
eq2 = 5*x + 6*y - 2*z == -48.8;
eq3 = 2*x - 5*y + 4.5*z == 92.5;
[A,B] = equationsToMatrix([eq1, eq2, eq3], [x, y, z]);
X = linsolve(A, B);
disp('x=');disp(X(1));
disp('y=');disp(X(2));
disp('z=');disp(X(3));
%% Problem 3
% Your Code for Problem 3 Starts Here!!!!
t = 0:20;
x_t = @(t) 10*t*exp(-0.1*t);
v_t = @(t) -(t-10)*exp(-0.1*t);
a_t = @(t) ((t-20)*exp(-0.1*t)) / 10;

figure

subplot(3,1,1)
fplot(x_t);
title('Position');
xlabel('time t');
ylabel('position m');

hold on

subplot(3,1,2)
fplot(v_t);
title('Velocity');
xlabel('time t');
ylabel('velocity m/s');

subplot(3,1,3)
fplot(a_t);
title('Acceleration');
xlabel('time t');
ylabel('acceleration m/s^2');
hold off
%% Problem 4
% Your Code for Problem 3 Starts Here!!!!
% y = pr4Cos(theta, eSpec)
th = str2double(input('Enter theta value: ', 's'));
espec = str2double(input('Enter maximum expansion error: ', 's'));
[y] = pr4Cos(th, espec);
disp('y=');
disp(y);

