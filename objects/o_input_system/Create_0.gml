/// @desc Initialize variables
axisMap = ds_map_create();
previousAxisValues = ds_map_create();
axisValues = ds_map_create();

actionMap = ds_map_create();
previousActionValues = ds_map_create();
actionValues = ds_map_create();

// Set gamepad axis deadzone
if (gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.19);
}

// Input types
enum InputType
{
	Keyboard,
	GamepadButton,
	GamepadAxis
}

// Action types
enum ActionType
{
	Normal,
	Pressed,
	Released,
	Hold
}
