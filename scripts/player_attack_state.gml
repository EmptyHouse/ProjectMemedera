///player_attack_state
sprite_index = spr_player_attack;
image_speed = .5; 

//Do Damage
if (image_index >= 1 && !attacked) {
    var damage = instance_create(x, y, Damage); 
    damage.creator = id;
    damage.knockback = 15;
    attacked = true;
    damage.knockback = 2;
}
