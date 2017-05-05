///botan_move_right_state
var wall_at_right = place_meeting(x+1, y, SolidParent);
var ledge_at_right = !position_meeting(bbox_right+1, bbox_bottom+1, SolidParent);

if (wall_at_right) {
    state = botan_move_left_state;
}

// Control Botan's sprite
image_xscale = 1;

// Move Botan
x += 1;
