/// @func asset_item_exists(itemName)
/// @arg {string} itemName
var itemName = argument0;

return ds_map_exists(Assets.items, itemName);
