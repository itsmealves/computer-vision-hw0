img = double(rgb2gray(imread('flower.bmp')));

function prepare_and_show(img, dest)
	img_array = reshape(img, [], 1);

	result = (img - min(img_array)) / (max(img_array) - min(img_array));
	imshow(uint8(result * 255))
	imwrite(uint8(result * 255), dest)

end

for t = [10, 50, 100]
	[u, s, v] = svds(img, t);
	result = u * s * v';
	prepare_and_show(result, strcat('svd', num2str(t), '.bmp'));
end