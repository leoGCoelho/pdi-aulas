pkg load image

A = imread('toycars1.png');
B = imread('toycars2.png');

Abw = im2bw(A);
Bbw = im2bw(B);
Output = xor(Abw, Bbw);

subplot(3,3,1), imshow(A); title('Source 1'), axis image;
subplot(3,3,3), imshow(B); title('Source 2');
subplot(3,3,4), imshow(Abw); title('B/W 1');
subplot(3,3,6), imshow(Bbw); title('B/W 2');
subplot(3,3,8), imshow(Output); title('Output');

octave