/// @desc Initialize variables
width = 320;
height = 180;
windowScale = 3;
camera = camera_create_view(x, y, width, height, 0, self, -1, -1, width / 2, height / 2);

targets = ds_list_create();
followSmoothing = 5.0;

// Camera state machine init
state_machine_init();
state_machine_add_state("FollowTargets", noone, camera_follow_targets_state, noone);
state_transition_to("FollowTargets");

// Set up views in all rooms
for (var i = 0; i < room_last + 1; i++)
{
	room_set_view_enabled(i, true);
	room_set_viewport(i, 0, true, 0, 0, width, height);
}

window_set_rectangle(200, 200, width * windowScale, height * windowScale);
surface_resize(application_surface, width * windowScale, height * windowScale);
