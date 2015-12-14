function [ lap_stack ] = get_laplacian_stack( img_double, n )
%UNTITLED Summary of this function goes here
% get laplacian stack of a image
%   Detailed explanation goes here
lap_stack = {};
gau_stack = {};
for i = 0:n+1
    gau_stack{i} = imgaussfilt(img_double,2^i)
end


for i = 1:n
    lap_stack{i} = gau_stack{i} - gau_stack{i+1}
end

