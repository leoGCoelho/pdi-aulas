pkg load image

close all
clear all

% g = 1./(1 + (m./f).^E)

I=imread('cameraman.tif'); % Ler imagem
figure,
subplot(2,2,1), imshow(I); % Mostrar imagem original

m=255/2;
E = 5;

Output1=1./(1 + (m./double(I)).^E);

X = 0:255;
Y1 = im2uint8(1./(1 + (m./X).^E));

subplot(1,2,1), imshow(Output1); % Mostra a imagem binaria
subplot(1,2,2), plot(X,Y1);
legend('1/(1+(m/r)^E)');
axis([0 255 0 255]);


