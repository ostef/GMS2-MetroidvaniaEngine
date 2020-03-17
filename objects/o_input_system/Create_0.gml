/// @desc Initialize variables
singleton_check();

// Axes
axisMap = ds_map_create();
previousAxisValues = ds_map_create();
axisValues = ds_map_create();
// Actions
actionMap = ds_map_create();
previousActionValues = ds_map_create();
actionValues = ds_map_create();
// Input sequences
sequenceMap = ds_map_create();		// Key is sequence name, value is a list of all the action names, in order
sequenceValues = ds_map_create();	// Key is sequence name, value is array: [advancement, lastStepTime]
sequenceStepHoldTime = 0.5;		// The time for which the sequence steps will hold true

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
	Released
}
