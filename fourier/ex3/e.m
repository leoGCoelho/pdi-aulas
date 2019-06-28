hill=imread('hill.tif');

histo = imadjust(hill, stretchlim(hill,[0.05,0.95]),[]);

subplot(1,2,1), imshow(hill);
subplot(1,2,2), imshow(histo)
