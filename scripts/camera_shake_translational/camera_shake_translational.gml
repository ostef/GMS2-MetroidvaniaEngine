/// @func camera_shake_translational(amplitude)
/// @desc Apply a translational shake to the camera
/// @arg {real} amplitude
function camera_shake_translational(argument0) {
	var amplitude = argument0;

	Camera.translationalShake = amplitude * CAMERA_SHAKE_TRANSLATIONAL_REFERENCE;



}
