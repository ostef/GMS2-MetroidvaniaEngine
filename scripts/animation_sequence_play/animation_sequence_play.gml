/// @func animation_sequence_play(animSequenceIndex)
/// @desc Play an animation sequence. The sequence can be interrupted by any call to animation_play or animation_sequence_play.
/// @arg {int} animSequenceIndex
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
		animationSprite = animationData[0];
		sprite_index = animationSprite;
		animationLoopMode = animationData[1]
		animationSpeed = animationData[2];
		animationFrameEvents = animationData[3];
		animationFrame = animationSpeed > 0 ? 0 : image_number - 1;
		image_index = animationFrame;
		animationFrameCount = image_number;
	}
}
