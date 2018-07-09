%% EECE 2207 Final Exam Spring 2017


%% Problem 1: 15 Points
%
% Use matlab to solve the following system of equations
%
% $$ \begin{array}{lclclclcr}
% 2a & + & b & + & 2c & + & 3d & = & 5,\\
% 6a & + & 2b & + & 4c & + & 8d & = & 8,\\
% a & - & b &   &  & + & 4d & = & -4,\\
%  &  & b & - & 3c & - & 4d & = & -3,
% \end{array} $$

%%%%%%%%%%%%%%%%%% Insert Code for Problem 1 Here %%%%%%%%%%%%%%%%%%%%%%
syms a b c d
eq1 = 2*a + b +  2*c + 3*d == 5
eq2 = 6*a + 2*b + 4*c + 8*d == 8
eq3 = a - b + 0*c + 4*d == -4
eq4 = 0*a + b - 3*c - 4*d == -1
[A,B] = equationsToMatrix([eq1, eq2, eq3, eq4], [a, b, c, d]);
X = linsolve(A, B);
disp(X);

%% Problem 2: 15 Points
%
% Given the following function:
%
% $$f(x) =  x^6 -0.4x^5 - 28.71x^4 + 3.4x^3 + 185.85x^2 -5.63x - 284.2$$
%
% * Use matlab to solve for the values of _x_ that make f(x) equal to 0
% * Create a variable _x1_ with 100 equally spaced points between -5 and 5
% * Evaluate f2 = f(x1) and plot the results (Label your axes)


%%%%%%%%%%%%%%%%%% Insert Code for Problem 2 Here %%%%%%%%%%%%%%%%%%%%%%
f_x = [1, -0.4, -28.71, 3.4, 185.85, -5.63, -284.2];
r = roots(f_x);
x1 = linspace(-5, 5, 100);
f2 = 1.*pow2(x1,6)-0.4.*pow2(x1,5)-28.71.*pow2(x1,4)+3.4.*pow2(x1,3)+185.85.*pow2(x1,2)-5.63.*pow2(x1,1)-284.2;
plot(x1, f2);

%% Problem 3: 15 Points
%
% Use Matlab to evaluate and compare the results of an integral evaluation
% using a mathematical expression or a data vector by performing the
% following steps
%
% * Create an anonymous function named _f3_ that implements _f(x)_ from
% Problem 2
% * Use Matlab to evaluate $f3a = \int \limits_{-5}^{5}f3(x)dx$
% * Use the data in the vectors f2 and x1 and the appropriate Matlab
% function to approximate the above integral.

%%%%%%%%%%%%%%%%%% Insert Code for Problem 3 Here %%%%%%%%%%%%%%%%%%%%%%
f3a = @(x1) 1.*pow2(x1,6)-0.4.*pow2(x1,5)-28.71.*pow2(x1,4)+3.4.*pow2(x1,3)+185.85.*pow2(x1,2)-5.63.*pow2(x1,1)-284.2;
sol = integral(f3a, -5, 5)
sol2 = trapz(f2)


%% Problem 4: 15 Points 
%
% The Taylor series approximation of the sin(x) is given by the following
% equation
%
% $$ sin(t) = \sum \limits_{k=0}^{N} \frac{(-1)^k t^{2k+1}}{(2k+1)!} $$
%
% Where _t_ is in radians and _N_ is the number of terms used in the
% approximation.
%
% Write a function named _f4_ that implements the Taylor series
% approximation of the sine as follows:
%
% *_out4 = f4(t,N,errSpec)_*
%
% * _t_ is the input angle vector (radians). Obviously f4 should be written
% to accept vector inputs.
% * _N_ is the number of terms used in the series approximation.
% * _errSpec_ controls how f4 determines the number of terms used in the 
% approximation.  If _errSpec_ equals 0, Use N terms in the approximation.
% If _errSpec_ does not equal 0, iterations continue until magnitude of the 
% difference between the successive approxmation terms is less than
% _errSpec_
% * Plot the output of Matlab's built-in function sin(t) and the output of f4
% on the same plot.  Include a title,labels, and a legend.

%%%%%%%%%%%%%%%%%% Insert Code for Problem 4 Here %%%%%%%%%%%%%%%%%%%%%%
range = linspace(1, 10, 50);
plot(range, sin(range), 'r', range, f4(15, length(range), 0), 'b')


%% Problem 5: 40 Points
%
% Implement the following GUI to compare the results of Matlab's Interpolation and
% Regression Capabilities .
% 
% <<FinalSystemF17.tiff>>
% 
%
% The GUI components and their functionality is described below
%
% *Input Data 1:* Name of independent data vector
%
% *Input Data 2:* Name of dependent data vector
%
% *Length:* The number of interpolation and regression display points 
%
% *Interpolation Method:* Popup Menu to select between linear, spline, and
% cubic
%
% * Regression Order:* Slider specifying the regression order.  Min = 1,
% Max = length of independent data vector.
%
%
% *Display Results:*  Pushbutton that does the following:
%
% a) Plot the input independent/dependent data pair with red '*'s
%
% b) Create 'xVector'. A vector with 'Length' linearly spaced between the minimum and maximum value
% of the input independent data vector
% 
% c) Otain the interpolation method from the Interpolation Method popup Menu
% Use the presribed method to create 'intVector. Plot _intVector_ with '-'s.
%
% d) Obtain the regression order from the regression slider. Perfrom a
% regression analysis of that order on the input data pair to obtain
% 'regVector'.  Evaluate the regVector polynomial using xVector as the input
% and plot the result using blue '.'s.  for the plot%
%
%
% * Use xVector for both the interpolation data points and the independent data vector
% required to evaluate the polynomial determined by the regression evaluation.
%
% * Display all plots simultaneously.
%
%
% *Save Results:*  Pushbutton that saves xVector, intVector, and regVector to
% Matlab's base workspace:
