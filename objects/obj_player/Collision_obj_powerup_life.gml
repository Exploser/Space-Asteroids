/// @description Insert description here
// You can write your code in this editor

if (global.player_life >= 3)
{
	var _count = 0
	_count = choose(1,2,3);
	if (_count == 1)
	{
		powerup = 1;
		alarm[0] = 10 * 60;
		image_blend = c_yellow;
		audio_play_sound(sfx_powerup_spread,10,false,1,0);	
	}
	else if (_count == 2)
	{
		powerup = 2;
		alarm[1] = 10 * 60;
		image_blend = c_white;
		image_alpha = 0.4;
		audio_play_sound(sfx_shield_up,10,false,1,0);
	}
	else if (_count == 3)
	{
		powerup = 3;
		alarm[0] = 4 * 60;
		image_blend = c_red;
		audio_play_sound(sfx_powerup_hyper,10,false,1,0);	
	}
}
else if (global.player_life <3)
{
	global.player_life += 1;
	audio_play_sound(sfx_powerup_life,10,false,1,0);
}
instance_destroy(other);
