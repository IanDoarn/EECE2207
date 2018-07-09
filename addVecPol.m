function [r, th] = addVecPol(r1, th1, r2, th2)
% Add two polar vectors
% returns radius and angle of resulting vector
% return r: radius
% return th: angle

% sum of both radii
r_t = r1 + r2;
% sum of both theta
th_t = th1 + th2;

xr = r_t * cos(th_t);
yr = r_t * sin(th_t);

r = sqrt((xr^2) + (yr^2));
th = tan(yr/xr)^-1;
end