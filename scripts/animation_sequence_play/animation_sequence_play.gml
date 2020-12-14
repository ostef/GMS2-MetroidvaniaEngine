/// @func animation_sequence_play(animSequenceIndex)
/// @desc Play an animation sequence. The sequence can be interrupted by any call to animation_play or animation_sequence_play.
/// @arg {int} animSequenceIndex
function animation_sequence_play(argument0) {
	var animSequenceIndex = argument0;

	// Sanity check
	if (!animation_sequence_exists(animSequenceIndex))
	{
		instance_log_error("ANIMATION: Animation sequence with index " + string(animSequenceIndex) + " does not exist");

		return;
	}

	if (animSequenceIndex != animationSequenceIndex)
	{
		var sequenceData = animationSequenceList[| animSequenceIndex];
	
		// Only play the sequence if the last animation in the sequence is not playing
		if (sequenceData[array_length_1d(sequenceData) - 1] != animationIndex)
		{
			animationSequenceIndex = animSequenceIndex;
			animationSequenceStep = 0;
		
			var animIndex = sequenceData[0];
			var animationData = animationList[| animIndex];
			animationIndex = animIndex;
			animationSprite = animationData[Animation.SpriteIndex];
			sprite_index = animationSprite;
			animationLoopMode = animationData[Animation.LoopMode]
			animationSpeed = animationData[Animation.Speed];
			animationFrameEvents = animationData[Animation.FrameEvents];
			animationFrame = animationSpeed > 0 ? 0 : image_number - 1;
			image_index = animationFrame;
			animationFrameCount = image_number;
		}
	}



}
