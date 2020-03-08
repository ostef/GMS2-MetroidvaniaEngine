/// @desc Initialize variables
event_inherited();

// Set the camera target
camera_set_target(self);

// States
state_machine_add_state("Move", noone, player_move_state, noone);
state_transition_to("Move");
