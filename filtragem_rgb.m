pkg load image

A = imread('onion.png');
subplot(1,2,1), imshow(A), title('Original');

func = @(x) max(x(:));  % Especifica o filtro a ser aplkcado

B(:,:,1) = nlfilter(A(:,:,1),[3 3],func); % filtro na vizinhanca 3x3 no 1o canal
B(:,:,2) = nlfilter(A(:,:,2),[3 3],func); % filtro na vizinhanca 3x3 no 2o canal
B(:,:,3) = nlfilter(A(:,:,3),[3 3],func); % filtro na vizinhanca 3x3 no 3o canal

subplot(1,2,2), imshow(B), title('Filtrada');