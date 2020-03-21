/// @func player_jump()
/// @desc Apply a jump force and change state to airborne
var jumpForce = calculate_jump_force(maxJumpHeight, grav);
yVel = -jumpForce;
state_transition_to("Airborne");
