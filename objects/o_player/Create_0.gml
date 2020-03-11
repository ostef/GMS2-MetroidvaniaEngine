/// @desc Initialize variables
event_inherited();

// Set the camera target
camera_set_target(self);
// States
state_machine_add_state("Move", noone, player_move_state, noone);
state_transition_to("Move");
// Input
input_add_axis("Move");
input_map_to_axis("Move", INPUT_KEYBOARD, ord("D"), true);
input_map_to_axis("Move", INPUT_KEYBOARD, ord("A"), false);
input_map_to_axis("Move", INPUT_GAMEPAD_BUTTON, gp_padr, true);
input_map_to_axis("Move", INPUT_GAMEPAD_BUTTON, gp_padl, false);
input_map_to_axis("Move", INPUT_GAMEPAD_AXIS, gp_axislh, true);
