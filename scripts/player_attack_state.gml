///player_attack_state
sprite_index = spr_player_ground_shoot;
image_speed = .25; 
if (!instance_exists(Arrow)) {
    instance_create(Player.x + 10, Player.y, Arrow);
    image_xscale = sign(hspd);
}

//Do Damage
if (image_index >= 1 && !attacked) {
    var damage = instance_create(x, y, Damage); 
    damage.creator = id;
    damage.knockback = 15;
    attacked = true;
    damage.knockback = 2;
}
