pkg image load

hill = imread("hill.tif");

hillfft = fft2(hill);

hillshift = fftshift(hillfft);

hill2 =log( 1 + abs(hillshift));

figure, imshow(hill2, []);