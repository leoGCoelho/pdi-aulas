pkg load image;
#A
A = imread('lake.tif');

#B
F=fft2(x);
F1=fftshift(F);
B=log(1+abs(F1)); 
figure, imshow(B,[],'InitialMagnification','fit')