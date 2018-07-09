function [ value ] = calculatePi( n )
    s = 0;
    for i = 1:n
        s = s + (1 / (n^2));
    end
    value = sqrt(6 * s);
end