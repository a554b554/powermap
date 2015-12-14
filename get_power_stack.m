function [ power_stack ] = get_power_stack( lap_stack )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
power_stack = {};
[a n] = size(lap_stack);
for i = 1:n
    power_stack{i} = imgaussfilt(lap_stack{i}.^2, 2^i+1);
end


end

