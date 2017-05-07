///player_move_state()

//Movement
if (!place_meeting(x, y+1, SolidParent)) {
    vspd += grav;
    
    // Player is in the air
    sprite_index = spr_player_jump;
    image_speed = 0;
    image_index = (vspd > 0);
    
    // Control the jump height
    if (Input.up_release && vspd < -2) {
        vspd = -2;
    }
} else {
    vspd = 0;
    
    // Jumping code
    if (Input.up) {
        vspd = -10;
    } else {
        apply_vert_acceleration(acc);
    }
    
    // Player is on the ground
    if (hspd == 0) {
        sprite_index = spr_player_idle;
        image_speed = .1;
    } else {
        sprite_index = spr_player_run;
        image_speed = .5;
    }
}

if (Input.right || Input.left) {
    hspd += (Input.right-Input.left)*acc;
    hspd_dir = Input.right - Input.left;
    
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
} else {
    apply_friction(acc);
}

if (hspd != 0) {
    image_xscale = sign(hspd);
}


//Crouch

if (Input.down && vspd = 0 && hspd = 0) {
    image_index = 0;
    sprite_index = spr_player_crouch;
    }

    
move(SolidParent); 



// Dash
if (Input.dash && vspd = 0) {
    image_index = 0;
    state = player_dash_state;
}
    
// Attack
if (Input.attack && vspd = 0 && hspd = 0 && !place_meeting(x+1, y, SolidParent)) {
    image_index = 0;
    state = player_attack_state;
}

// Shoot
if (Input.shoot_pressed && vspd = 0 && hspd = 0) {
    image_index = 0;
    state = player_shoot_state;
}
