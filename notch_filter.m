
pkg load image;
#A
A = imread('halftone.png');

#B
F=fft2(double(A),size(H,1),size(H,2));
F1=fftshift(F);
B=log(1+abs(F1)); 
#figure, imshow(B,[],'InitialMagnification','fit')

#C
PQ = paddedsize(size(A));
H1 = notch('ideal',PQ(1),PQ(2),3,PQ(1)/2,PQ(2)/2);
H2 = notch('ideal',PQ(1),PQ(2),3,PQ(1)/2+10,PQ(2)/2+10);
H3 = notch('ideal',PQ(1),PQ(2),3,500,500);
H4 = notch('ideal',PQ(1),PQ(2),3,450,510);

Fo=fft2(double(A),PQ(1),PQ(2));

F_filtred = Fo.*H1.*H2.*H3;

F_result=real(ifft2(F_filtred)); 
F_final=F_result(1:size(A,1), 1:size(A,2));
#D
figure, imshow(F_final,[])

#E
Fcf=fftshift(F_filtred);
E=log(1+abs(Fcf));

subplot(2,2,1); imshow(A);title('Imagem Original'); axis image; 
subplot(2,2,2); imshow(B,[],'InitialMagnification','fit'); title('Espectro de Fourier'); 
subplot(2,2,3); imshow(F_final,[]);title('D'); 
subplot(2,2,4); imshow(E,[]);title('E');