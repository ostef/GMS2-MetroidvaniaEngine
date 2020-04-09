/// @func menu_add_item(menuItem)
/// @arg {MenuItem} menuItem
var menuItem = argument0;
assert(!is_undefined(menuItem), "MENU: Cannot add an undefined item to menu");

ds_list_add(menuItemList, menuItem);
