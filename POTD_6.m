function [ outArray ] = POTD_6( inArray )
% Cube elements if non negative, replace negative with 0
outArray = [0:(length(inArray) - 1)];
for i = 1:length(inArray)
    A = inArray(i);
    if A < 0
        outArray(i) = 0;
    else
        outArray(i) = A^3;
    end
end
end