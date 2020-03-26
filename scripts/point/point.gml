/// @func point(x, y)
/// @desc Create a point object
/// @arg {int} x
/// @arg {int} y
var xx = floor(argument0);
var yy = floor(argument1);

enum Point
{
	X,
	Y
}

return [xx, yy];
