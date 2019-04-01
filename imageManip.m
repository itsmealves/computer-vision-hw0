%reads in the image, converts it to grayscale, and converts the intensities
%from uint8 integers to doubles. (Brightness must be in 'double' format for
%computations, or else MATLAB will do integer math, which we don't want.)
dark = double(rgb2gray(imread('u2dark.png')));

%%%%%% Your part (a) code here: calculate statistics
arrayDark = reshape(dark, [], 1);
meanValue = mean(arrayDark)
maxValue = max(arrayDark)
minValue = min(arrayDark)

%%%%%% Your part (b) code here: apply offset and scaling
fixedimg = 255 * (dark - minValue) / (maxValue - minValue);

%displays the image
imshow(uint8(fixedimg));
imwrite(uint8(fixedimg), "answer_1b.png");

%%%%%% Your part (c) code here: apply the formula to increase contrast,
% and display the image
contrasted = 2.0 * (fixedimg - 128) + 128;
imwrite(uint8(contrasted), "answer_1c.png");
