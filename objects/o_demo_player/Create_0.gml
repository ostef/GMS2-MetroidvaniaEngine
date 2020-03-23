/// @desc Initialize variables
event_inherited();

// Jumping
jumpHeight = 16;
maxJumpHeight = 64;

// Set the camera target
camera_set_target(self);

#region Input
input_add_sequence("Combo1");	// Light attack, jump, light attack, light attack, heavy attack
input_sequence_add_step("Combo1", "Light Attack");
input_sequence_add_step("Combo1", "Jump");
input_sequence_add_step("Combo1", "Light Attack");
input_sequence_add_step("Combo1", "Light Attack");
input_sequence_add_step("Combo1", "Heavy Attack");
#endregion

#region States
groundedState = state_machine_add_state(noone, player_grounded_state, noone);
airborneState = state_machine_add_state(noone, player_airborne_state, noone);
duckedState = state_machine_add_state(noone, player_duck_state, noone);

state_transition_to(groundedState);
#endregion

#region Animation
idleAnim = animation_add(s_player_idle, AnimationLoopMode.Loop, 1);
runAnim = animation_add(s_player_run, AnimationLoopMode.Loop, 1);
startRunningAnim = animation_add(s_player_start_running, AnimationLoopMode.Stop, 1);
stopAnim = animation_add(s_player_stop, AnimationLoopMode.Stop, 1);
jumpAnim = animation_add(s_player_jump, AnimationLoopMode.Stop, 1);
jumpForwardAnim = animation_add(s_player_jump_forward, AnimationLoopMode.PingPong, 1);
duckAnim = animation_add(s_player_duck, AnimationLoopMode.Stop, 1);
standUpAnmi = animation_add(s_player_duck, AnimationLoopMode.Stop, -1);

movementSequence = animation_sequence_add(startRunningAnim, runAnim);
stopSequence = animation_sequence_add(stopAnim, idleAnim);

animation_sequence_play(movementSequence);
#endregion
