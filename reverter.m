pkg load image

A = imread('cameraman.tif');
B = imcomplement(A);

subplot(1,2,1), imshow(A);
subplot(1,2,2), imshow(B);

octave