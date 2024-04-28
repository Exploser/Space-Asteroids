/// @description Insert description here
// You can write your code in this editor
if (powerup==2) exit;

if (global.player_life <= 1)
{
	audio_stop_all();
	audio_play_sound(sfx_lose, 0, false,1,0,random_range(0.5,1.5));
	
	//Game-over System
	obj_game.player_alive = false;
	
	//highscore system
	if (global.current_score >= global.highscore)
	{
		obj_game.new_highscore = true;
		//Set the highscore
		global.highscore = global.current_score;
		
		//Save the highscore
		highscore_save()
	}
	
	//Destroying Instance
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy();
}
else
{
	global.player_life -= 1;
	effect_create_above(ef_explosion, x, y, 1, c_white);
	audio_play_sound(sfx_damage_hit, 0, false, 1, 0, random_range(0.6,1.2));
	instance_destroy(other);
	powerup = 2;
	alarm[1] = 5 * 60;
	image_blend = c_white;
	image_alpha = 0.4;
	
}



