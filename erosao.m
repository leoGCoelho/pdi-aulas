pkg load image

In = imread('text.png');
Struct = ones(6,1);   % Elemento estruturante em 

Out = imerode(In, Struct);     % Aplica erosao a imagem
subplot(1,2,1), imshow(In), title("Original");
subplot(1,2,2), imshow(Out), title("Com Erosao");