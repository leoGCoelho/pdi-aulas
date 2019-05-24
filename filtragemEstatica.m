pkg load image

A = imread('Babuino.jpg');
subplot(4,3,2), imshow(A), title('Original');

ASP = imnoise(A,'salt & pepper', 0.03);   % Adiciona 3% (0.03) de ruido "salt & pepper"

AG = imnoise(A,'gaussian', 0.02);   % Adiciona 2% (0.02) de ruido gaussiano



Am1 = ordfilt2(A,5,[3 3]);
subplot(4,3,4), imshow(Am1), title('Filtro na Original Mediana');

ASPm1 = ordfilt2(ASP,5,[3 3]);
subplot(4,3,7), imshow(ASPm1), title('Filtro no Salt & Pepper Mediana');

AGm1 = ordfilt2(AG,5,[3 3]);
subplot(4,3,10), imshow(AGm1), title('Filtro no Gaussiano Mediana');


Am1 = ordfilt2(A,1,[3 3]);
subplot(4,3,5), imshow(Am1), title('Filtro na Original Minimo');

ASPm1 = ordfilt2(ASP,1,[3 3]);
subplot(4,3,8), imshow(ASPm1), title('Filtro no Salt & Pepper Minimo');

AGm1 = ordfilt2(AG,1,[3 3]);
subplot(4,3,11), imshow(AGm1), title('Filtro no Gaussiano Minimo');


Am2 = ordfilt2(A,9,[3 3]);
subplot(4,3,6), imshow(Am2), title('Filtro na Original Maximo');

ASPm2 = ordfilt2(ASP,9,[3 3]);
subplot(4,3,9), imshow(ASPm2), title('Filtro no Salt & Pepper Maximo');

AGm2 = ordfilt2(AG,9,[3 3]);
subplot(4,3,12), imshow(AGm2), title('Filtro no Gaussiano Maximo');