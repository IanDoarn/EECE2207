function [y] = f4(t, N, errSpec)
% Calculate sin(theta) using the taylor series expansion
% of the sine function

% Anonymous function to calculate estimated error
E = @(a, b) abs((b - a) / a);
% declare inital values for S_n, y, n
Sn = 0;
y = 0;
n = 0;
% convert theta to radians
x = t * (pi/180);
    while(n < N)
        % loop until E is <= maximum expansion error
        
        % taylor series expansion
        Sn2 = Sn + ((pow2(-1, n))/(factorial(2*n)))*pow2(x, 2*n);
        if E(Sn2, Sn) <= errSpec
            % if E is <= eSpec, break from the loop
            % and return y
            y = Sn2;
            break
        end
        % otherwise, continue looping
        Sn = Sn2;
        n = n + 1;
    end
end
