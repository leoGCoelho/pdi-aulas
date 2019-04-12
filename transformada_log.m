pkg load image

close all
clear all

I=imread('cameraman.tif'); 
figure,
subplot(2,2,1), imshow(I);

Id=im2double(I);

%Output1=1.5*log(1+Id);
Output1=2*log(1+Id);
Output2=3*log(1+Id);
Output3=5*log(1+Id);

subplot(2,2,2), imshow(Output1); 
subplot(2,2,3), imshow(Output2);
subplot(2,2,4), imshow(Output3);

X = 0:255;
%X1=0:0.0039:1;
X2=mat2gray(X);

Y1 = uint8(255*(1.5*log(1+X2)));
Y2 = uint8(255*(3*log(1+X2)));
Y3 = uint8(255*(5*log(1+X2)));
figure, 
subplot(3,2,2), plot(X,Y1);
legend('2*log(1+X)');
axis([0 255 0 255]);
subplot(3,2,1), imshow(Output1);

subplot(3,2,4), plot(X,Y2);
legend('3*log(1+X)');
axis([0 255 0 255]);
subplot(3,2,3), imshow(Output2);

subplot(3,2,6), plot(X,Y3);
legend('5*log(1+X)');
axis([0 255 0 255]);
subplot(3,2,5), imshow(Output3);
