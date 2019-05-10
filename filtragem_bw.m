pkg load image

A = imread('cameraman.tif');
subplot(1,2,1), imshow(A), title('Original');

func = @(x) max(x(:));  % Especifica o filtro a ser aplkcado

B = nlfilter(A,[3 3],func); % filtro na vizinhanca 3x3
subplot(1,2,2), imshow(B), title('Filtrada');