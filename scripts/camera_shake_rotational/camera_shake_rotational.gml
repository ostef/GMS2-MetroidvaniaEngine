/// @func camera_shake_rotational(amplitude)
/// @desc Apply a rotational shake to the camera
/// @arg {real} amplitude
function camera_shake_rotational(argument0) {
	var amplitude = argument0;

	Camera.rotationalShake = amplitude * CAMERA_SHAKE_ROTATIONAL_REFERENCE;



}
