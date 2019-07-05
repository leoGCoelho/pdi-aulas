pkg load image

In = imread('Solda.bmp');
subplot(5,2,1), imshow(In), title('Original');
subplot(5,2,2), plot(In);

[g1, NR1, SI1, TI1] = regiongrow(In, 255, 65);
subplot(5,2,3), imshow(g1), title('Thresholding revela regiao com problema');
subplot(5,2,4), plot(TI1), title('Thresholding = 65; Seed = 255');

[g2, NR2, SI2, TI2] = regiongrow(In, 255, 80);
subplot(5,2,5), imshow(g2), title('Thresholding revela regioes com muitos problemas');
subplot(5,2,6), plot(TI2), title('Thresholding = 80; Seed = 255');

[g3, NR3, SI3, TI3] = regiongrow(In, 255, 95);
subplot(5,2,5), imshow(g3), title('Thresholding revela regioes com muitos problemas');
subplot(5,2,6), plot(TI3), title('Thresholding = 95; Seed = 255');

[g4, NR4, SI4, TI4] = regiongrow(In, 255, 50);
subplot(5,2,7), imshow(g4), title('Thresholding revela regiao com problema');
subplot(5,2,8), plot(TI4), title('Thresholding = 50; Seed = 255');

[g5, NR5, SI5, TI5] = regiongrow(In, 255, 35);
subplot(5,2,9), imshow(g5), title('Thresholding revela regiao com problema');
subplot(5,2,10), plot(TI5), title('Thresholding = 35; Seed = 255');