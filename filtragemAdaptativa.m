pkg load image

A = imread('Babuino.jpg');
subplot(3,3,1), imshow(A), title('Original');

ASP = imnoise(A,'salt & pepper', 0.03);   % Adiciona 3% (0.03) de ruido "salt & pepper"
subplot(3,3,4), imshow(ASP), title('Ruido Salt & Pepper');

AG = imnoise(A,'gaussian', 0.02);   % Adiciona 2% (0.02) de ruido gaussiano
subplot(3,3,7), imshow(AG), title('Ruido Gaussiano');



Am1 = wiener2(A,[3 3]);
subplot(3,3,2), imshow(Am1), title('Filtro na Original 3x3');

ASPm1 = wiener2(ASP,[3 3]);
subplot(3,3,5), imshow(ASPm1), title('Filtro no Salt & Pepper 3x3');

AGm1 = wiener2(AG,[3 3]);
subplot(3,3,8), imshow(AGm1), title('Filtro no Gaussiano 3x3');


Am2 = wiener2(A,[5 5]);
subplot(3,3,3), imshow(Am2), title('Filtro na Original 5x5');

ASPm2 = wiener2(ASP,[5 5]);
subplot(3,3,6), imshow(ASPm2), title('Filtro no Salt & Pepper 5x5');

AGm2 = wiener2(AG,[5 5]);
subplot(3,3,9), imshow(AGm2), title('Filtro no Gaussiano 5x5');