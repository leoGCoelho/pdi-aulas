pkg load image

A = imread('eight.tif');
subplot(2,3,2), imshow(A), title('Original');

ASP = imnoise(A,'salt & pepper', 0.03);   % Adiciona 3% (0.03) de ruido "salt & pepper"
subplot(2,3,4), imshow(ASP), title('Salt & Pepper');

AG = imnoise(A,'gaussian', 0.02);   % Adiciona 2% (0.02) de ruido gaussiano
subplot(2,3,6), imshow(AG), title('Gaussiano');