/// @desc Initialize variables
singleton_check();

// Display
width = 320;
height = 180;
windowScale = 4;
// Shake
translationalShake = 0;
rotationalShake = 0;
shakeLerpAmount = .1;
xOffset = 0;
yOffset = 0;
rotation = 0;
// Following
targets = ds_list_create();
followSmoothing = .1;
// Camera
camera = camera_create_view(x, y, width, height, 0, noone, -1, -1, width / 2, height / 2);

camera_set_limits(-infinity, -infinity, infinity, infinity);

// Camera state machine init
state_machine_init();
followTargetsState = state_machine_add_state(noone, camera_follow_targets_state, noone);
state_transition_to(followTargetsState);

// Set up views in all rooms
for (var i = 0; i < room_last + 1; i++)
{
	room_set_view_enabled(i, true);
	room_set_viewport(i, 0, true, 0, 0, width, height);
}

window_set_rectangle(200, 200, width * windowScale, height * windowScale);
surface_resize(application_surface, width * windowScale, height * windowScale);
