/// @func asymptotic_average(current, target, amount)
/// @arg {real} current
/// @arg {real} target
/// @arg {real} amount
function asymptotic_average(argument0, argument1, argument2) {
	var current = argument0;
	var target = argument1;
	var amount = argument2;

	return ((1 - amount) * current) + (amount * target);



}
