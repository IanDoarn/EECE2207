function [ b ] = Bina( d )
% convert decimal number to binary base2
% :param d: Decimal number
% :return b: Binary number in base2 

if numel(num2str(d)) >= 16
    disp("Error: " + d + " to large");
else
    n = d;
    v = "";
    while n ~= 1
        r = mod(n, 2);
        n = floor(n / 2);
        if r == 0
            v = v + "0";
        else
            v = v + "1";
        end
    end
    format long
    b = str2double(reverse(v));
end
