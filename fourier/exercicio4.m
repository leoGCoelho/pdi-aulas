pkg load image;

img = imread("letraa.jpg");

F = fft2(img);
F2 = fftshift(F);

% Circulo de mascara
imageSizeX = 320;
imageSizeY = 310;
[columnsInImage rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);

centerX = 160;
centerY = 155;
radius = 35;
circlePixels = (rowsInImage - centerY).^2 ...
    + (columnsInImage - centerX).^2 <= radius.^2;

img_final1 = bitand(F2, circlePixels);
img_final1 = ifftshift(img_final1);
img_final1=real(ifft2(abs(img_final1))); 

figure();
subplot(2,2,1), imshow(img), title("Imagem original");
subplot(2,2,2), imshow(img_final1, []), title("dominio espacial. Letra B");
Fc2=fftshift(F2);
% use abs to compute the magnitude and use log to brighten display
S=log(1+abs(Fc2));
%LETRA C
%Determine good padding for Fourier transform
PQ = paddedsize(size(img));
%Create a Gaussian Lowpass filter 5% the width of the Fourier transform
D0 = 0.05*PQ(1);
H = lpfilter('gaussian', PQ(1), PQ(2), D0);
% Calculate the discrete Fourier transform of the image
F=fft2(double(img),size(H,1),size(H,2));
% Apply the highpass filter to the Fourier spectrum of the image
LPFS = H.*F;
% convert the result to the spacial domain.
LPF=real(ifft2(LPFS));
% Crop the image to undo padding
LPF=LPF(1:size(img,1), 1:size(img,2));
%Display the blurred image
subplot(2,2,3), imshow(LPF, []), title("dominio espacial. Letra C");
Fc=fftshift(F);
% use abs to compute the magnitude and use log to brighten display
S1=log(1+abs(Fc));

%LETRA D
D0 = 20*PQ(1);
H = lpfilter('gaussian', PQ(1), PQ(2), D0);
% Calculate the discrete Fourier transform of the image
F=fft2(double(img),size(H,1),size(H,2));
% Apply the highpass filter to the Fourier spectrum of the image
LPFS = H.*F;
% convert the result to the spacial domain.
LPF=real(ifft2(LPFS));
% Crop the image to undo padding
LPF=LPF(1:size(img,1), 1:size(img,2));
Fc2=fftshift(F);
% use abs to compute the magnitude and use log to brighten display
S11=log(1+abs(Fc2));
%Display the blurred image
subplot(2,2,4), imshow(LPF, []), title("Ddominio espacial. Letra D");

figure();
subplot(2,2,1), imshow(S,[]), title("Dominio da frequencia. Letra B");
subplot(2,2,2), imshow(S1,[]), title("Dominio da frequencia. Letra C");
subplot(2,2,3), imshow(S11,[]), title("Dominio da frequencia. Letra D");

