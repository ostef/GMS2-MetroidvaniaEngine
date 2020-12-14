/// @func inventory_slot(itemCount, itemFlags)
/// @desc Create an inventory slot object
/// @arg {int} itemCount
/// @arg {ItemFlag} itemFlags
function inventory_slot(argument0, argument1) {
	var itemCount = argument0;
	var itemFlags = argument1;

	enum InventorySlot
	{
		ItemCount,
		ItemFlags
	}

	return [itemCount, itemFlags];



}
