pkg load image

A = imread('cola1.png');
B = imread('cola2.png');
R = imabsdiff(A, B);   % with overflow, use the command imsubtract

subplot(1,3,1);imshow(A);title('A'),axis image;
subplot(1,3,2);imshow(B);title('B');
subplot(1,3,3);imshow(R);title('Resultado');

octave