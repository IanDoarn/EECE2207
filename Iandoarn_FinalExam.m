% number 1
syms a b c d
eq1 = 2*a + b +  2*c + 3*d == 5
eq2 = 6*a + 2*b + 4*c + 8*d == 8
eq3 = a - b + 0*c + 4*d == -4
eq4 = 0*a + b - 3*c - 4*d == -1
[A,B] = equationsToMatrix([eq1, eq2, eq3, eq4], [a, b, c, d]);
X = linsolve(A, B);
disp(X);

% number 2
f_x = [1, -0.4, -28.71, 3.4, 185.85, -5.63, -284.2];
r = roots(f_x);
x1 = linspace(-5, 5, 100);
f2 = 1.*pow2(x1,6)-0.4.*pow2(x1,5)-28.71.*pow2(x1,4)+3.4.*pow2(x1,3)+185.85.*pow2(x1,2)-5.63.*pow2(x1,1)-284.2;
plot(x1, f2);

% number 3
f3a = @(x1) 1.*pow2(x1,6)-0.4.*pow2(x1,5)-28.71.*pow2(x1,4)+3.4.*pow2(x1,3)+185.85.*pow2(x1,2)-5.63.*pow2(x1,1)-284.2;
sol = integral(f3a, -5, 5)
sol2 = trapz(f2)

% number 4
range = linspace(1, 10, 50);
plot(range, sin(range), 'r', range, f4(15, length(range), 0), 'b')

