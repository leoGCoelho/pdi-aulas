pkg load image

T1 = imread('toycars1.png');
T2 = imread('toycars2.png');
T3 = imread('toycars3.png');
Rs = imadd(T1/3,T2/3);
Rs = imadd(Rs, T3/3);

subplot(2,3,1);imshow(T1);title('Toycars 1'),axis image;
subplot(2,3,2);imshow(T2);title('Toycars 2');
subplot(2,3,3);imshow(T3);title('Toycars 3');
subplot(2,3,5);imshow(Rs);title('Resultado');

octave