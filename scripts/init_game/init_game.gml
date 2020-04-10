/// @func init_game()
/// @desc Create persistent manager objects, called on r_init creation
var mainLayer = layer_create(0, "inst_main");

// Create manager objects
instance_create_layer(0, 0, mainLayer, Debug);
instance_create_layer(0, 0, mainLayer, Game);
instance_create_layer(0, 0, mainLayer, InputSystem);
instance_create_layer(0, 0, mainLayer, Camera);
instance_create_layer(0, 0, mainLayer, Collisions);
instance_create_layer(0, 0, mainLayer, Assets);
instance_create_layer(0, 0, mainLayer, Events);

#region Input
#region UI
input_add_action("UI Up");
input_map_to_action("UI Up", ActionType.Pressed, InputType.Keyboard, ord("W"));
input_map_to_action("UI Up", ActionType.Pressed, InputType.GamepadButton, gp_padu);

input_add_action("UI Down");
input_map_to_action("UI Down", ActionType.Pressed, InputType.Keyboard, ord("S"));
input_map_to_action("UI Down", ActionType.Pressed, InputType.GamepadButton, gp_padd);

input_add_action("UI Left");
input_map_to_action("UI Left", ActionType.Pressed, InputType.Keyboard, ord("A"));
input_map_to_action("UI Left", ActionType.Pressed, InputType.GamepadButton, gp_padl);

input_add_action("UI Right");
input_map_to_action("UI Right", ActionType.Pressed, InputType.Keyboard, ord("D"));
input_map_to_action("UI Right", ActionType.Pressed, InputType.GamepadButton, gp_padr);

input_add_action("UI Submit");
input_map_to_action("UI Submit", ActionType.Pressed, InputType.Keyboard, ord("E"));
input_map_to_action("UI Submit", ActionType.Pressed, InputType.Keyboard, vk_enter);
input_map_to_action("UI Submit", ActionType.Pressed, InputType.GamepadButton, gp_face1);

input_add_action("UI Cancel");
input_map_to_action("UI Cancel", ActionType.Pressed, InputType.Keyboard, ord("Q"));
input_map_to_action("UI Cancel", ActionType.Pressed, InputType.Keyboard, vk_backspace);
input_map_to_action("UI Cancel", ActionType.Pressed, InputType.GamepadButton, gp_face2);
#endregion

// Pause
input_add_action("Pause");
input_map_to_action("Pause", ActionType.Pressed, InputType.Keyboard, ord("I"));
input_map_to_action("Pause", ActionType.Pressed, InputType.GamepadButton, gp_start);

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
#endregion
