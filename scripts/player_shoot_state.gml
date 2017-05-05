/// player_shoot_state
instance_create(Player.x + 20, Player.y, Bullet);
sprite_index = spr_player_shoot;
image_speed = .5;


move();
