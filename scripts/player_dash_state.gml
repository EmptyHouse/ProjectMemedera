///player_dash_state
sprite_index = spr_player_dash;
image_speed = 0.4; 
hspd = image_xscale*spd*1.7; 


// Gravity
apply_gravity();

// Move
move(SolidParent);
