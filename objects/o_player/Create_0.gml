/// @desc Initialize variables
event_inherited();

jumpForce = 7;

// Set the camera target
camera_set_target(self);
// States
state_machine_add_state("Move", noone, player_move_state, noone);
state_machine_add_state("Ledge Hanging", noone, player_hanging_state, noone);
state_transition_to("Move");
// Input
input_add_axis("Move");
input_map_to_axis("Move", InputType.Keyboard, ord("D"), true);
input_map_to_axis("Move", InputType.Keyboard, ord("A"), false);
input_map_to_axis("Move", InputType.GamepadButton, gp_padr, true);
input_map_to_axis("Move", InputType.GamepadButton, gp_padl, false);
input_map_to_axis("Move", InputType.GamepadAxis, gp_axislh, true);

input_add_action("Jump");
input_map_to_action("Jump", ActionType.Pressed, InputType.Keyboard, ord("W"));
input_map_to_action("Jump", ActionType.Pressed, InputType.GamepadButton, gp_face1);
