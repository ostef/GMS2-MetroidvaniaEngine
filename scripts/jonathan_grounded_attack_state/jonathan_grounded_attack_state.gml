xVel = 0;
character_apply_gravity();

animation_play(whipAttackAnim);

if (animation_ended())
{
	log_trace("Attack ended");
	state_transition_to(groundedState);
}