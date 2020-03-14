/// @func asymptotic_average(current, target, amount)
/// @arg {real} current
/// @arg {real} target
/// @arg {real} amount
var current = argument0;
var target = argument1;
var amount = argument2;

return ((1 - amount) * current) + (amount * target);
