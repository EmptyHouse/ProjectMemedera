///botan_move_left_state
var wall_at_left = place_meeting(x-1, y, SolidParent);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, SolidParent);

if (wall_at_left) {
    state = botan_move_right_state;
}

// Control Botan's sprite
image_xscale = -1;

// Move Botan
x -= 1;
