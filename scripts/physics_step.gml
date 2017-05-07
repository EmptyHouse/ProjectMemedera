//All calculations will be measured in pixels per second

if (!use_physics) 
{
    return 0;//ends the script if use_physics is off
}

//Apply gravity
if (gravity_on) 
{
    vel_y += gravity_scale * 9.8 * delta_time;
}

//Apply Velocity
if (!lock_x) 
{
    x += (delta_time * vel_x);
}

if (!lock_y) 
{
    y += (delta_time * y_vel);
}
