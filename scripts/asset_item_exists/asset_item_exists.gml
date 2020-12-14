/// @func asset_item_exists(itemName)
/// @arg {string} itemName
function asset_item_exists(argument0) {
	var itemName = argument0;

	return ds_map_exists(Assets.items, itemName);



}
