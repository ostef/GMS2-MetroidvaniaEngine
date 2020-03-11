/// @desc Initialize variables
axesMap = ds_map_create();
actionsMap = ds_map_create();

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
