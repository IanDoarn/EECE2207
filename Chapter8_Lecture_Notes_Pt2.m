%% Curve Fitting (Regression) with Polynomials: The _polyfit_ Function
% Polynomials can be used to fit data points in two ways. In one the polynomial
% passes through all the data points, and in the other the polynomial does not necessarily
% pass through any of the points but overall gives a good approximation of the
% data. The two options are described below.
% 
%% Polynomials that pass through all the points:
% When n points $(x_i, y_i)$ are given, it is possible to write a
% polynomial of degree _n - 1_
% that passes through all the points. For example, if two points are given it is possible
% to write a linear equation in the form of $y = mx + b$ that passes through the
% points. With three points, the equation has the form of $y = ax^2 + bx +
% c$. With _n_
% points the polynomial has the form 
% 
% $$a_{n-1} x^{n-l} +a_{n-2}x^{n-2}+ \ldots +a_1 x+a_0$$. 
% 
% The coefficients of the polynomial are determined by substituting each point in the
% polynomial and then solving the n equations for the coefficients. As will be shown
% later in this section, polynomials of high degree might give a large error if they are
% used to estimate values between data points.
% 
% 
%% Polynomials that do not necessarily pass through any of the points:
% When _n_ points are given, it is possible to write a polynomial of degree less than
% n - 1 that does not necessarily pass through any of the points but that overall
% approximates the data. The most common method of finding the best fit to data
% points is the method of _least squares_. In this method, the coefficients of the polynomial
% are determined by minimizing the sum of the squares of the _residuals_ at all
% the data points. The *_residual_* at each point is defined as the difference between the
% value of the polynomial and the value of the data. 
% 
% For example, consider the case
% of finding the equation of a straight line that best fits four data points as shown below
% 
% <<Lect8_Pt2_1.jpg>>
% 
% 
% The points are $(x_1,y_1)$, $(x_2,y_2)$, $(x_3,y_3)$, and $(x_4,y_4)$, and the polynoymial
% of the first degree can be written as 
% 
% $$f(x) = a1x + a0$
% 
% The residual, $R_i$, at each
% point is the difference between the value of the function at $x_i$ and $y_i$
% 
% $$R_i = f(x_i) -y_i $$ . 
% 
% An equation for the sum of the squares of the residuals $R_i$ of all
% the points is given by:
% 
% $$R = [f(x_l)-y_1]^2 + [f(x_2)-y_2]^2 + [f(x_3)-y_3]^2 + [f(x_4)-y_4]^2$$
% 
% or, after substituting the equation of the polynomial at each point, by:
% 
% $$R = [a_lx_l + a_0 -y_1]^2 + [a_lx_2 + a_0-y_2]^2 + [a_lx_3 + a_0-y_3]^2 + [a_lx_4 + a_0-y_4]$$
% 
% At this stage R is a function of $a_1$ and $a_0$. The minimum of R can be determined
% by taking the partial derivative of R with respect to a1 and a0 (two equations) and
% equating them to zero:
% 
% $$\frac{\partial R}{\partial a_1} = 0$$
% 
% and
% 
% $$ \frac{\partial R}{\partial a_0} = 0$$
% 
% This results in a system of two equations with two unknowns,  $a_1$ and $a_0$. The
% solution of these equations gives the values of the coefficients of the polynomial
% that best fits the data. The same procedure can be followed with more points and
% higher-order polynomials. More details on the least squares method can be found
% in books on numerical analysis.
% 
%% polyfit(x,y,n)
% 
% Curve fitting with polynomials is done in MATLAB with the polyfit
% function, which uses the least squares method. The basic form of the polyfit
% function is:
%
% $$p = polyfit(x,y,n)
%
% *_p_* is the vector of the coefficients of the polynomial that fits the data.
%
% *_x_* is a vector wi the horizontal coordinates of the data points (independent variable).
% *_y_* is a vector with the vertical coordinates of the data points (dependent variable).
% *_n_* is the degree of the polynomial.
%
% For the same set of _m_ points, the polyfit function can be used to fit polynomials
% of any order up to _n = m - 1_. If _n = 1_ the polynomial is a straight
% line, if _n = 2_,
% the polynomial is a parabola, and so on. The polynomial passes through all the
% points if _n = m -1_ (the order of the polynomial is one less than the number of
% points). It should be pointed out here that a polynomial that passes through all the
% points, or polynomials with higher order, do not necessarily give a better fit overall.
% High-order polynomials can deviate significantly between the data points.

%% Curve Fitting with Functions Other than Polynomials
%
% What if the application requires that you fit the data using functions that
% are not polynomials. This sections describes Matlab's curve fitting capabilities
% in these situations. We will find that some functions fit the data better
% than others.  We will cover curve fitting using _polyfit_ with the following functions.
%
%
% <<Lect8_Pt2_2.jpg>>
%
% *Step 1:*
%
% Rewrite the functions in a form that can be fitted with the linear
% polynomial *_(n=1)_*, which is
%
% $$y = mx+b$$
%
% For example
%
% $$y = bx^m \longrightarrow log_{base}(y)= log_{base}(b)+m\cdot
% log_{base}(x) $$
%
% If we define new variables,
%
% $$y_2=log_{base}(y), b_2=log_{base}(b), \mbox{ and }, x_2 = log_{base}(x)
% $$
%
% We can rewrite the orignal equation as a first order equation in $x_2$ as
%
% $$y_2=m \cdot x_2 + b_2$$
%
% The result is shown below:
%
% <<Lect8_Pt2_3.jpg>>
%
% Note the linear relationships between
% 
% * ln(y) and ln(x)  or log(y) and log(x)  (power funtion)
% * ln(y) and x       (exponential function)
% * log(y) and x      (exponential function (base 10))
% * 1/y  and x        (reciprocal function)
% * y and ln(x) or y and log(x) (logarithmic function)
%
% *Step 2:*
%
% The linear relationship above are cool, because we can now just use the *_polyfit(x,y,1)_* form to
% calculate the best fit with the following substitutions for the arguments
%
% <<Lect8_Pt2_3.jpg>>
%
%
% *Step 3:*
%
% The result of the substitution is a two element vector _p_ with 
%
% * p(1) representing the value for the constant _m_
% * p(2) is the value of _b_ needed for the appropriate form of the
% intercept.
%
% 
% *Estimating the best form for the approximation*
% 
% If you plot the data using different combinations of linear and
% logarithmic axes, you can get a good idea of which approxmiation to use
% by taking note of which combination results in a plot that appears to fit
% a straight line.  The following graphic shows some good combinations:
%
% <<Lect8_Pt2_4.jpg>>
%
% *Other Things you might want to consider when choosing a function*
%
% * Exponential functions cannot pass through the origin
% * Exponential functions can only fit dat with all positive y's or all
% negative y's
% * Logarithmic function cannot model x = 0 or negative values of x
% * For the power function y=0 when x = 0
% * The reciprocal equation cannot model y = 0
%
% *Let's do an example problem*
%
%% Example Problems
%
% 18, 21, 24, 25 
