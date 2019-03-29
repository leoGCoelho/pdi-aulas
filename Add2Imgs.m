pkg load image

P = imread('sml1.jpg');
Q = imread('sml2.jpg');
R = imadd(P,Q);

subplot(2,2,1);imshow(P);title('Smile 1'),axis image;
subplot(2,2,2);imshow(Q);title('Smile 1');
subplot(2,2,3);imshow(R+100);title('With Overflow');
subplot(2,2,4);imshow(R);title('Without Overflow');

octave