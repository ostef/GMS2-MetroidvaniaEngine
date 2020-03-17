/// @func input_add_sequence(sequenceName)
/// @desc Create a new input sequence
/// @arg {string} sequenceName
var sequenceName = argument0;
var entry = o_input_system.sequenceMap[? sequenceName];

// Create the entry if it does not exist
if (is_undefined(entry))
{
	var entry = ds_list_create();
	ds_map_add_list(o_input_system.sequenceMap, sequenceName, entry);
	// Create the entry in the values map
	o_input_system.sequenceValues[? sequenceName] = [0, 0.0];
	log_info("INPUT: Created input sequence " + sequenceName);
}
else
{
	log_error("INPUT: Input sequence " + sequenceName + " already exists");
}
