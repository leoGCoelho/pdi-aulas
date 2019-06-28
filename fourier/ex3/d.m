hill=imread('hill.tif');

imshow(hill)

PQ = paddedsize(size(footBall));

D0 = 0.05*PQ(1);
H = lpfilter('gaussian', PQ(1), PQ(2), D0);

F=fft2(double(hill),size(H,1),size(H,2));

LPFS_hill = H.*F;

LPF_hill=real(ifft2(LPFS_hill)); 

LPF_hill=LPF_football(1:size(hill,1), 1:size(hill,2));

figure, imshow(LPF_hill, [])

Fc=fftshift(F);
Fcf=fftshift(LPFS_hill);

S1=log(1+abs(Fc)); 
S2=log(1+abs(Fcf));
figure, imshow(S1,[])
figure, imshow(S2,[])