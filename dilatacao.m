pkg load image

In = imread('text.png');
Struct = [0 1 0; 1 1 1; 0 1 0];   % Elemento estruturante em forma de cruz

Out = imdilate(In, Struct);     % Dilata a imagem
subplot(1,2,1), imshow(In), title("Original");
subplot(1,2,2), imshow(Out), title("Dilatada");