%% Problem Set 9a
%
% Ian Doarn
%
% 10/3/2017

%% Problem 1
%
x = [4.5, 5, -16.12, 21.8, 10.1, -16.11, 5, 14, -3, 3, 2];

for i = 2:length(x)
    d = i;    
    while((d > 1) && (x(d) < x(d-1)))
        temp = x(d);
        x(d) = x(d-1);
        x(d-1) = temp;
        d = d-1;
    end
end

disp(x);

%% Problem 2
%



%% Problem 5
%

n1 = 100;
n2 = 10000;
n3 = 1000000;

pn1 = calculatePi(n1);
pn2 = calculatePi(n2);
pn3 = calculatePi(n3);

format long
disp([pi pn1; pi pn2; pi pn3]);