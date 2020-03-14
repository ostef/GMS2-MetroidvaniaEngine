/// @desc Cleanup
ds_map_destroy(actionMap);
ds_map_destroy(axisMap);

// Axis values
ds_map_destroy(axisValues);
ds_map_destroy(previousAxisValues);

// Action values
ds_map_destroy(actionValues);
ds_map_destroy(previousActionValues);
