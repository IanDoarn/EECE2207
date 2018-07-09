%%Problem set 7
%
% Ian Doarn
%
% 9/26/2017

%% Problem 1
%
s = 50:50:300 ;

[ r ] = (sqrt(s/pi)/2); 
[ V ] = ((4 * pi * (r).^3)/3);
table = vertcat(s, V)';
disp(table);