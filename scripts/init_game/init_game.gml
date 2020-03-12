/// @func init_game()
/// @desc Create persistent manager objects, called on r_init creation
var mainLayer = layer_create(0, "inst_main");

// Create manager objects
instance_create_layer(0, 0, mainLayer, o_debug);
instance_create_layer(0, 0, mainLayer, o_game);
instance_create_layer(0, 0, mainLayer, o_input_system);
instance_create_layer(0, 0, mainLayer, o_camera);
instance_create_layer(0, 0, mainLayer, o_collisions);
