pkg load image

A = imread('peppers.png');
subplot(1,2,1), imshow(A), title('Original');

k = fspecial('motion',50,54);   % Funcao especial 'motion' (mancha de movimento)

B = imfilter(A,k,'symmetric');  % Alipando filtro usando simetria nas bordas
subplot(1,2,2), imshow(B), title('Triggered');