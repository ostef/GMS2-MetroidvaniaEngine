/// @func camera_follow_targets()
var avgPosition = get_average_pos(targets);
var targetX = avgPosition[0];
var targetY = avgPosition[1];

if (followSmoothing > 0.0)
{
	x = lerp(x, floor(targetX), 1.0 / followSmoothing);
	y = lerp(y, floor(targetY), 1.0 / followSmoothing);
}
