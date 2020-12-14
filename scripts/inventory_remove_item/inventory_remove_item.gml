/// @func inventory_remove_item(itemName)
/// @arg {string} itemName
function inventory_remove_item(argument0) {
	var itemName = argument0;
	var item = inventory[? itemName];

	if (!is_undefined(item))
	{
		item = inventory_slot(item[InventorySlot.ItemCount] - 1, item[InventorySlot.ItemFlags])
		inventory[? itemName] = item;
	
		if (item[InventorySlot.ItemCount] == 0)
		{
			ds_map_delete(inventory, itemName);
		}
	
	
		instance_log_info("INVENTORY: Removed item " + itemName);
	}



}
