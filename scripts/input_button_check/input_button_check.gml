/// @func input_button_check(inputType, input)
/// @arg {InputType} inputType
/// @arg {int} input
function input_button_check(argument0, argument1) {
	var inputType = argument0;
	var input = argument1;

	switch (inputType)
	{
		case InputType.Keyboard: return keyboard_check(input);
		case InputType.GamepadButton: return gamepad_is_connected(0) && gamepad_button_check(0, input);
		case InputType.GamepadAxis: return gamepad_is_connected(0) && abs(gamepad_axis_value(0, input));
	}



}
