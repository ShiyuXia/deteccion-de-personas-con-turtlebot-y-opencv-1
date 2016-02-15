function [ x , y ] = histograma( original )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
tic
imagen = int16(original);

h = [-1,0,1];
gradiente = imfilter(imagen,h);

x = [-((2^16)-1) : 1 : (2^16)-1];
y = zeros(1,length(x));

for i = 1 : length(x)
    j = x(i);
    y(i) = sum(sum(gradiente == j));
end

y(65536) = 0; % Eliminamos el gradiente 0;
toc
end