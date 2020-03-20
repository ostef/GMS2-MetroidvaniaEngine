/// @func player_swim_state()
var waterArea = instance_place(x, y, o_water_area);

// If not in water, transition to the move state
if (waterArea == noone)
{
	state_transition_to("Move");
	
	exit;
}

var waterY = waterArea.bbox_top;
// Stay at the surface
yVel = sign(waterY - y);
