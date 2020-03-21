/// @func enums()
// Debugging
enum LogLevel
{
	Trace = 0,
	Info = 1,
	Warning = 2,
	Error = 3,
	Fatal = 4
}

enum DebugDrawType
{
	Rectangle = 0,
	Circle = 1,
	Line = 2,
	Arrow = 3,
	Text = 4
}

// Input system
enum InputType
{
	Keyboard,
	GamepadButton,
	GamepadAxis
}

enum ActionType
{
	Normal,
	Pressed,
	Released
}

// Animation system
enum AnimationLoopMode
{
	Stop,
	Loop,
	PingPong
}
