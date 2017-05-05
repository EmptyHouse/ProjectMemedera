///take_damage
if (state != player_hurt_state) {
 
    image_blend = make_colour_rgb(220, 150, 150);
    vspd = -12;
    hspd = (sign(x-other.x)*10);
    
    state = player_hurt_state;
    
    move(SolidParent);
    
    if (instance_exists(Player_Stats)) {
        Player_Stats.hp -= 1;
    }
}
