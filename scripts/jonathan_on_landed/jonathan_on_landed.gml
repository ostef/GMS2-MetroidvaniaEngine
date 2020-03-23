if (nextStateIndex == groundedState && input_get_axis_value("Move") == 0)
{
	animation_sequence_play(landSequence);
}
