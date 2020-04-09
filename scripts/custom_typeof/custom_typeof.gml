/// @func custom_typeof(val)
/// @desc Extends the typeof function to take into account our custom array "structs"
/// @arg val
var val = argument0;

if (is_fsm(val)) { return "fsm"; }

return builtin_typeof(val);
