pkg load image

In = imread('onions.png');
Out = In;

for each pixel Out(i,j) within the image I
  if Out(i,j) > threshold
    Out(i,j) = 1;
  else
    Out(i,j) = 0;
  end
  
end