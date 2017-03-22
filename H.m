function [ out ] = H(r, y, I)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
out = I*r^2 / (2*sqrt(y^2+r^2));

end

