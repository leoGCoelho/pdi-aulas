pkg load image

clear all; close all

x = imread('onion.png');
imshow(x)
[r,c,s] = size(x);
m = max(max(max(x)));
b = [7 6 5];

for i=1 : length(b)
  d = 2^b(i);
  z = round(x/d);
  figure
  imshow(z*d)
end

octave