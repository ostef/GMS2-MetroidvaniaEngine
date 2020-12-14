/// @func inventory_add_item(itemName)
/// @desc Add an item to the inventory. Increment the item count or create a new entry if none exists.
/// @arg {string} itemName
function inventory_add_item(argument0) {
	var itemName = argument0;
	assert(asset_item_exists(itemName), "INVENTORY: Item does not exist!");
	var item = inventory[? itemName];

	if (is_undefined(item))
	{
		inventory[? itemName] = inventory_slot(1, ItemFlag.None);
	}
	else
	{
		inventory[? itemName] = inventory_slot (item[InventorySlot.ItemCount] + 1, item[InventorySlot.ItemFlags]);
	}

	instance_log_info("INVENTORY: Added item " + itemName);



}
