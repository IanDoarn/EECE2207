function [ outArray ] = Untitled2( inArray )

% Create logical array where values are greater or equal to 0
gtzIndex = inArray >= 0;

% cube everything in inArray, cast to floats, and append logical array
outArray = (gtzIndex) .* inArray.^3;

end