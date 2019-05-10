pkg load image

A = imread('eight.tif');
subplot(3,2,1), imshow(A), title('Original');

ASP = imnoise(A,'salt & pepper', 0.03);   % Adiciona 3% (0.03) de ruido "salt & pepper"
subplot(3,2,3), imshow(ASP), title('Ruido Salt & Pepper');

AG = imnoise(A,'gaussian', 0.02);   % Adiciona 2% (0.02) de ruido gaussiano
subplot(3,2,5), imshow(AG), title('Ruido Gaussiano');



Am = medfilt2(A,[3 3]);
subplot(3,2,2), imshow(Am), title('Filtro na Original');

ASPm = medfilt2(ASP,[3 3]);
subplot(3,2,4), imshow(ASPm), title('Filtro no Salt & Pepper');

AGm = medfilt2(AG,[3 3]);
subplot(3,2,6), imshow(AGm), title('Filtro no Gaussiano');