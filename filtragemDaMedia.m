pkg load image

A = imread('Babuino.jpg');
subplot(3,2,1), imshow(A), title('Original');

ASP = imnoise(A,'salt & pepper', 0.03);   % Adiciona 3% (0.03) de ruido "salt & pepper"
subplot(3,2,3), imshow(ASP), title('Ruido Salt & Pepper');

AG = imnoise(A,'gaussian', 0.02);   % Adiciona 2% (0.02) de ruido gaussiano
subplot(3,2,5), imshow(AG), title('Ruido Gaussiano');



k = ones(3,3)/9;    % Define o kernel do filtro

Am = imfilter(A,k);
subplot(3,2,2), imshow(Am), title('Filtro na Original');

ASPm = imfilter(ASP,k);
subplot(3,2,4), imshow(ASPm), title('Filtro no Salt & Pepper');

AGm = imfilter(AG,k);
subplot(3,2,6), imshow(AGm), title('Filtro no Gaussiano');