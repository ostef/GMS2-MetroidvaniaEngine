/// @desc Follow targets
var avgPosition = get_weighted_average_pos(targets);
var targetX = avgPosition[0];
var targetY = avgPosition[1];

if (followSmoothing != 0.0)
{
	x = asymptotic_average(x, floor(targetX), followSmoothing) + followXOffset;
	y = asymptotic_average(y, floor(targetY), followSmoothing) + followYOffset;
}

// Limit camera movement to bounds
x = clamp(x, limitX1 + width / 2, limitX2 - width / 2);
y = clamp(y, limitY1 + height / 2, limitY2 - height / 2);

// Apply shake
xOffset = translationalShake * random_range(-1, 1);
yOffset = translationalShake * random_range(-1, 1);
rotation = rotationalShake * random_range(-1, 1);
// Update shake
translationalShake = lerp(translationalShake, 0, shakeLerpAmount);
rotationalShake = lerp(rotationalShake, 0, shakeLerpAmount);

// Update position and angle
camera_set_view_pos(camera, x + xOffset - width / 2, y + yOffset - height / 2);
camera_set_view_angle(camera, rotation);
