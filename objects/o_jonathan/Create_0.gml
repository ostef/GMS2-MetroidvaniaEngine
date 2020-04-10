/// @desc Initialize variables
event_inherited();

inventory_init();

// Set the game player instance
Game.playerInstance = self;

// Movement
moveSpeed = 2;
// Jumping
jumpHeight = 8;
maxJumpHeight = 72;

// Set the camera target
camera_set_target(self);

#region States
groundedState = fsm_add_state(fsm, noone, jonathan_grounded_state, noone);
airborneState = fsm_add_state(fsm, noone, jonathan_airborne_state, jonathan_on_landed);
duckedState = fsm_add_state(fsm, jonathan_on_duck, jonathan_ducked_state, jonathan_on_stand_up);

fsm_goto(fsm, groundedState);
#endregion

#region Animation
idleAnim = animation_add(s_jonathan_idle, AnimationLoopMode.Loop, 1);
startRunningAnim = animation_add(s_jonathan_start_running, AnimationLoopMode.Stop, 1);
runAnim = animation_add(s_jonathan_run, AnimationLoopMode.Loop, 1);
stopAnim = animation_add(s_jonathan_stop, AnimationLoopMode.Stop, 1);
turnAroundAnim = animation_add(s_jonathan_turn_around, AnimationLoopMode.Stop, 1);
jumpAnim = animation_add(s_jonathan_jump, AnimationLoopMode.Stop, 1);
jumpForwardAnim = animation_add(s_jonathan_jump_forward, AnimationLoopMode.Stop, 1);
fallAnim = animation_add(s_jonathan_fall, AnimationLoopMode.Stop, 1);
landAnim = animation_add(s_jonathan_land, AnimationLoopMode.Stop, 1);
duckAnim = animation_add(s_jonathan_duck, AnimationLoopMode.Stop, 1);
slideAnim = animation_add(s_jonathan_slide, AnimationLoopMode.Stop, 1);
whipAttackAnim = animation_add(s_jonathan_whip_attack, AnimationLoopMode.Stop, 1);

moveSequence = animation_sequence_add(startRunningAnim, runAnim);
turnAroundSequence = animation_sequence_add(turnAroundAnim, runAnim);
stopSequence = animation_sequence_add(stopAnim, idleAnim);
landSequence = animation_sequence_add(landAnim, idleAnim);

animation_play(idleAnim);
#endregion

#region Inventory
inventory_add_item("Alucard Sword");
inventory_add_item("Vampire Killer");
inventory_add_item("Vampire Killer");
#endregion
