pkg image load

hill = imread("hill.tif");

imshow(hill);

PQ = paddedsize(size(hill));

figure, imshow(PQ, [])
