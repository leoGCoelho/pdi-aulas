% Precisa paddedsize.m, dftuv.m, lpfilter.m e hpfilter.m)

pkg load image

In = imread('97.jpg');
subplot(3,3,1);imshow(In);title('Orginal');

PQ = paddedsize(size(In));  % Determine good padding for Fourier transform
D0 = 0.05*PQ(1);  % Create a Gaussian Lowpass filter 5% the width of the Fourier transform

%Lowcase
  H = lpfilter('gaussian', PQ(1), PQ(2), D0); % LOWCASE

  F=fft2(double(In),size(H,1),size(H,2)); % Calculate the discrete Fourier transform of the image
  LPFS_In = H.*F; % Apply the highpass filter to the Fourier spectrum of the image
  LPF_In=real(ifft2(LPFS_In));  % convert the result to the spacial domain
  LPF_In=real(ifft2(LPFS_In));  % convert the result to the spacial domain.
  LPF_In=LPF_In(1:size(In,1), 1:size(In,2));  % Crop the image to undo padding

  subplot(3,3,4);imshow(LPF_In, []);title('Lowcase Gaussian');
  Fc=fftshift(F);   % Display the Fourier Spectrum
  Fcf=fftshift(LPFS_In);    % Move the origin of the transform to the center of the frequency rectangle.

  S1=log(1+abs(Fc)); 
  S2=log(1+abs(Fcf));
  subplot(3,3,5);imshow(S1, []);title('Espectro Fourier');
  subplot(3,3,6);imshow(S2, []);title('Espectro Fourier em Lowcase');
  
% Highcase
  H = hpfilter('gaussian', PQ(1), PQ(2), D0); % HIGHCASE

  F=fft2(double(In),size(H,1),size(H,2)); % Calculate the discrete Fourier transform of the image
  HPFS_In = H.*F; % Apply the highpass filter to the Fourier spectrum of the image
  HPF_In=real(ifft2(HPFS_In));  % convert the result to the spacial domain
  HPF_In=real(ifft2(HPFS_In));  % convert the result to the spacial domain.
  HPF_In=HPF_In(1:size(In,1), 1:size(In,2));  % Crop the image to undo padding

  subplot(3,3,7);imshow(HPF_In, []);title('Highcase Gaussian');
  Fc=fftshift(F);   % Display the Fourier Spectrum
  Fcf=fftshift(HPFS_In);    % Move the origin of the transform to the center of the frequency rectangle.

  S1=log(1+abs(Fc)); 
  S2=log(1+abs(Fcf));
  subplot(3,3,8);imshow(S1, []);title('Espectro Fourier');
  subplot(3,3,9);imshow(S2, []);title('Espectro Fourier em Highcase');
  