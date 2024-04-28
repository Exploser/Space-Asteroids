/// @description  destroys the current instance, creates an explosion effect, spawns a power-up based on a random selection, updates the power-up timer, changes the sprite and duplicates the instance for big rocks, adjusts points, triggers a "fantastic" event, and plays a rock destruction sound.
// You can write your code in this editor

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
if (obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_hyper, obj_powerup_ghost, obj_powerup_spread,obj_powerup_life);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	instance_copy(true);
	global.current_score += 50;
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
	global.current_score += 25;
}
else
{
	//obj_game.fantastic = true;
	//global.current_score += 100;
	instance_destroy();
}
audio_play_sound(sfx_rockdestroy, 0, false, 1, 0, random_range(0.6,1.2));