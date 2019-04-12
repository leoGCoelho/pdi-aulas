pkg load image

close all
clear all

I=imread('cameraman.tif'); 
figure,
subplot(2,2,1), imshow(I);

Id=im2double(I);
E = 5;

Out1=exp(Id)-1;
Out2=2*(exp(Id)-1);
Out3=3*(exp(Id)-1);

subplot(2,2,2), imshow(Out1); 
subplot(2,2,3), imshow(Out2);
subplot(2,2,4), imshow(Out3);

X = 0:255;
X2=mat2gray(X);

Y1 = uint8(255*(exp(X2)-1));
Y2 = uint8(255*(2*(exp(X2)-1)));
Y3 = uint8(255*(3*(exp(X2)-1)));
figure,
 
subplot(3,2,2), plot(X,Y1);
legend('exp(Img)-1');
axis([0 255 0 255]);
subplot(3,2,1), imshow(Out1);

subplot(3,2,4), plot(X,Y2);
legend('2*(exp(Img)-1)');
axis([0 255 0 255]);
subplot(3,2,3), imshow(Out2);

subplot(3,2,6), plot(X,Y3);
legend('3*(exp(Img)-1)');
axis([0 255 0 255]);
subplot(3,2,5), imshow(Out3);