/// @func menu_item(name, iconSprite, onActivate)
/// @desc Create a menu item object
/// @arg {string} name
/// @arg {spriteIndex} iconSprite
/// @arg {script} onActivate
var name = argument0;
var iconSprite = argument1;
var onActivate = argument2;

enum MenuItem
{
	Name,
	IconSprite,
	OnActivate
}

return [name, iconSprite, onActivate];
