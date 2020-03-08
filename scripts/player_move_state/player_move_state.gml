/// @func player_move_state()
var xAxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yAxis = keyboard_check(ord("S")) - keyboard_check(ord("W"));

xVel = xAxis;
yVel = yAxis;
