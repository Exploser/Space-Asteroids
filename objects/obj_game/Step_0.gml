/// @description Insert description here
// You can write your code in this editor


powerup_time -= delta_time/ 1000000;


if (global.current_score > 15000)
{
	global.player_sprite = 5;
}

if (player_alive == false)
{
	if (keyboard_check_pressed(vk_space))
	{
		room_restart();	
	}
}
