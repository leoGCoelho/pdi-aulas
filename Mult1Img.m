pkg load image

A = imread('cola1.png');
R = immultiply(A, 1.5);

subplot(1,3,1);imshow(A);title('Target'),axis image;
subplot(1,3,2);imshow(R);title('Result');

octave