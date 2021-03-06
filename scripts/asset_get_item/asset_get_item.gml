/// @func asset_get_item(itemName)
/// @arg {string} itemName
function asset_get_item(argument0) {
	var itemName = argument0;
	var item = Assets.items[? itemName];

	// Sanity check
	if (is_undefined(item))
	{
		log_error("ASSETS: Item " + itemName + " does not exist");
	
		return undefined;
	}

	return item;



}
