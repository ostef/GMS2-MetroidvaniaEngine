/// @func camera_shake_translational(amplitude)
/// @desc Apply a translational shake to the camera
/// @arg {real} amplitude
var amplitude = argument0;

o_camera.translationalShake = amplitude * CAMERA_SHAKE_TRANSLATIONAL_REFERENCE;
