%% Problem Set 6
%
% Ian Doarn
%
% 9/19/2017

%% Problem 1
%
row_vector = [ (sqrt(15) * 10^3), (25/(14-16^2)), (log(35)/(0.4^3)), (sin(65)/cos(80)), 129, (cos(pi/20)^2) ];

disp("Row Vector");
disp(row_vector);

%% Problem 2
%
column_vector = [
    (32/(3.2^2))
    (sin(35)^2)
    6.2
    ((log(29))^2)
    0.00552
    (log(29)^2)
    133
];

disp("Column Vector");
disp(column_vector);

%% Problem 3
%
x = 0.85;
y = 12.5;

c_vector = [
    y
    (y^x)
    (log(y/x))
    (x*y)
    (x+y)
];

disp("Column Vector");
disp(c_vector);

%% Problem 4
%
temp_row_vector = linspace(-34,-7,9);
transposed_vector = temp_row_vector';

disp("Row Vector");
disp(temp_row_vector);
disp("Transposed Vector to Column");
disp(transposed_vector);

%% Problem 5
%
a = zeros(0,6);
a(6) = 4.7;

disp("Row Vector");
disp(a);

%% Problem 6
%
a = 2:3:17;
b = 3:4:15;
c = horzcat(a,b);
d = c';

disp("Row Vector a");
disp(a);
disp("Row Vector b");
disp(b);
disp("Row Vector c = a + b");
disp(c);
disp("Column Vector d = c'");
disp(d);
