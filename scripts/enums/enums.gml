/// @desc Contains all the enums
// Inventory
enum ItemType
{
	Weapon,
	Armor,
	Cape,
	Helmet,
	Consumable,
	QuestItem
}

enum ItemFlag
{
	None = 0,
	Equippable = 1,
	Droppable = 1 << 1
}

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

// Collision tiles
enum CollisionTile
{
	Void,
	Solid,
	Platform,
	RSlope,
	LSlope,
	RSlopeSmallStart,
	RSlopeSmallEnd,
	LSlopeSmallEnd,
	LSlopeSmallStart,
	RSlopeVerySmallStart,
	RSlopeVerySmallMiddle1,
	RSlopeVerySmallMiddle2,
	RSlopeVerySmallEnd,
	LSlopeVerySmallEnd,
	LSlopeVerySmallMiddle2,
	LSlopeVerySmallMiddle1,
	LSlopeVerySmallStart
}
