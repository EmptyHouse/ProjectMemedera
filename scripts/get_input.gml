///get_input()
right = keyboard_check(vk_right)|| gamepad_axis_value(0, gp_axislh) > .3;
left = keyboard_check(vk_left) || gamepad_axis_value(0, gp_axislh) < -.3;
up = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face1);
down = keyboard_check(vk_down) || gamepad_axis_value(0, gp_axislv) > .3;
up_release = keyboard_check_released(vk_up); 
dash = keyboard_check_pressed(ord('C'));
attack = keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0,gp_face3);
shoot_pressed = keyboard_check_pressed(ord('X')) || gamepad_button_check_pressed(0, gp_face2);


