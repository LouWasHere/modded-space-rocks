if keyboard_check(vk_left)
{
	image_angle = image_angle + 5;
}

if keyboard_check(vk_right)
{
	image_angle = image_angle -5;
}

if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1);
	speed = clamp(speed, 0, 10);
}

move_wrap(true, true, 10);

if(fire_rate-- <= 0 && keyboard_check(vk_space))
{
	with(instance_create_layer(x,y,layer,obj_bullet))
	{
		direction = obj_player.image_angle;
		speed = 10
	}
fire_rate = 15;
}