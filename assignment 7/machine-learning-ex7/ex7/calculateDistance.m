function distance = calculateDistance(x,y)
	distance = sqrt(sum((x-y).^2,2));
end