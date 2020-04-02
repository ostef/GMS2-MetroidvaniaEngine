/// @func inventory_get_item_count(itemName)
/// @desc Get the item count in an inventory
/// @arg {string} itemName
var itemName = argument0;
var entry = inventory[? itemName];

if (is_undefined(entry))
{
	return 0;
}

return entry[InventorySlot.ItemCount];
