pkg load image

In = imread('text.png');
Struct1 = strel('square',4);   % Quadrado 4x4
Struct2 = strel('line',5,45);   % Reta de comprimento 5 e angulo de 45°

Out1 = imdilate(In, Struct1);   % Aplica dilatacao a imagem
Out2 = imerode(In, Struct2);     % Aplica erosao a imagem
subplot(2,3,2), imshow(In), title("Original");
subplot(2,3,4), imshow(Out1), title("Dilatado");
subplot(2,3,6), imshow(Out2), title("Com Erosao");