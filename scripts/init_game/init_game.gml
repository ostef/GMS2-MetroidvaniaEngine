/// @func init_game()
/// @desc Create persistent manager objects, called on r_init creation
var mainLayer = layer_create(0, "inst_main");

// Create manager objects
instance_create_layer(0, 0, mainLayer, o_debug);
instance_create_layer(0, 0, mainLayer, o_game);
instance_create_layer(0, 0, mainLayer, o_input_system);
instance_create_layer(0, 0, mainLayer, o_camera);
instance_create_layer(0, 0, mainLayer, o_collisions);

#region Input
// Move
input_add_axis("Move");
input_map_to_axis("Move", InputType.Keyboard, ord("D"), true);
input_map_to_axis("Move", InputType.Keyboard, ord("A"), false);
input_map_to_axis("Move", InputType.GamepadButton, gp_padr, true);
input_map_to_axis("Move", InputType.GamepadButton, gp_padl, false);
input_map_to_axis("Move", InputType.GamepadAxis, gp_axislh, true);

// Jump
input_add_action("Jump");
input_map_to_action("Jump", ActionType.Pressed, InputType.Keyboard, ord("W"));
input_map_to_action("Jump", ActionType.Pressed, InputType.GamepadButton, gp_face1);

// Jump Released
input_add_action("Stop Jumping");
input_map_to_action("Stop Jumping", ActionType.Released, InputType.Keyboard, ord("W"));
input_map_to_action("Stop Jumping", ActionType.Released, InputType.GamepadButton, gp_face1);

// Ducking
input_add_action("Duck");
input_map_to_action("Duck", ActionType.Normal, InputType.Keyboard, ord("S"));
input_map_to_action("Duck", ActionType.Normal, InputType.GamepadButton, gp_padd);
input_map_to_action("Duck", ActionType.Normal, InputType.GamepadAxis, gp_axislv);

// Attacks
input_add_action("Light Attack");
input_map_to_action("Light Attack", ActionType.Pressed, InputType.Keyboard, vk_lcontrol);
input_map_to_action("Light Attack", ActionType.Pressed, InputType.GamepadButton, gp_face3);

input_add_action("Heavy Attack");
input_map_to_action("Heavy Attack", ActionType.Pressed, InputType.Keyboard, vk_space);
input_map_to_action("Heavy Attack", ActionType.Pressed, InputType.GamepadButton, gp_face4);
#endregion
