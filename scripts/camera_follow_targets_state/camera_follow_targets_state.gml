/// @func camera_follow_targets()
var avgPosition = get_weighted_average_pos(targets);
var targetX = avgPosition[0];
var targetY = avgPosition[1];

if (followSmoothing != 0.0)
{
	x = asymptotic_average(x, floor(targetX), followSmoothing) + followXOffset;
	y = asymptotic_average(y, floor(targetY), followSmoothing) + followYOffset;
}
