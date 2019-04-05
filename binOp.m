pkg load image

A = imread('toycars1.png');
B = imread('toycars2.png');

Abw = im2bw(A);
Bbw = im2bw(B);

subplot(2,4,1), imshow(A); title('Source 1'), axis image;
subplot(2,4,2), imshow(B); title('Source 2');
subplot(2,4,3), imshow(Abw); title('B/W 1');
subplot(2,4,4), imshow(Bbw); title('B/W 2');
subplot(2,4,5), imshow(not(Abw)); title('Not B');
subplot(2,4,6), imshow(and(Abw, Bbw)); title('A and B');
subplot(2,4,7), imshow(or(Abw, Bbw)); title('A or B');
subplot(2,4,8), imshow(xor(Abw, Bbw)); title('A xor B');

octave