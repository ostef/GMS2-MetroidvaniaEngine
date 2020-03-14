/// @func camera_shake_rotational(amplitude)
/// @desc Apply a rotational shake to the camera
/// @arg {real} amplitude
var amplitude = argument0;

o_camera.rotationalShake = amplitude * CAMERA_SHAKE_ROTATIONAL_REFERENCE;
