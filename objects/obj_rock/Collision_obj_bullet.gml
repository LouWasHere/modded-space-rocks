instance_destroy(other);

obj_game.points += 1;

direction = random(360);

if sprite_index == spr_rock_big
{
	effect_create_above(ef_explosion, x, y, 100, c_white);
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	effect_create_above(ef_smoke, x, y, 1, c_white);
	sprite_index = spr_rock_big;
	x = -100;
}
else
{
	effect_create_above(ef_smoke, x, y, 1, c_white);
	instance_destroy();	
}