/// @desc Contains all the enums
// Debugging
enum LogLevel
{
	Trace,
	Info,
	Warning,
	Error,
	Fatal
}

enum DebugDrawType
{
	Rectangle,
	Circle,
	Line,
	Arrow,
	Text
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
