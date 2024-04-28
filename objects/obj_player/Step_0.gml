/// @description Insert description here
// You can write your code in this editor

//var _key = keyboard_lastchar; 
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));


//Movement
if keyboard_check(vk_up) || (_up)
{
	motion_add(image_angle, 0.1);
}

if keyboard_check(vk_down) || (_down)
{
	motion_add(image_angle, -0.1);
}

if keyboard_check(vk_left) || (_left)
{
	image_angle += 4;
}

if keyboard_check(vk_right) || ( _right)
{
	image_angle -= 4;	
}

//Warpping True
move_wrap(true, true, 0);

if (powerup != 3)
{
	if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)
	{
		if (powerup == 1)
		{
			var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction += 10;
			_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			_bullet.direction -= 10;
			audio_play_sound(sfx_weapon_spread, 0, false,1,0,random_range(0.8,1.2));
		}
		instance_create_layer(x, y, "Instances", obj_bullet);
		audio_play_sound(sfx_shoot, 0, false,1,0,random_range(0.8,1.2));
	}
}
else if (powerup == 3)
{
	if mouse_check_button(mb_left) || keyboard_check(vk_space)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		audio_play_sound(sfx_weapon_hyper, 0, false,1,0,random_range(0.8,1.2));
	}
}

if (keyboard_check_pressed(ord("J")) && global.player_life > 1 && powerup == 0)
{
	global.player_life = global.player_life - 1;
	powerup = 2;
	alarm[1] = 10 * 60;
	image_blend = c_white;
	image_alpha = 0.4;
	audio_play_sound(sfx_shield_up,10,false,1,0);
}
else if (keyboard_check_pressed(ord("K")) && global.player_life > 1 && powerup == 0)
{
	global.player_life = global.player_life - 1;
	powerup = 3;
	alarm[0] = 4 * 60;
	image_blend = c_red;
	audio_play_sound(sfx_powerup_hyper,10,false,1,0);
}
else if (keyboard_check_pressed(ord("L")) && global.player_life > 1 && powerup == 0)
{
	global.player_life = global.player_life - 1;
	powerup = 1;
	alarm[0] = 10 * 60;
	image_blend = c_yellow;
	audio_play_sound(sfx_powerup_spread,10,false,1,0);
	
}
else if ((keyboard_check_pressed(ord("L"))) || (keyboard_check_pressed(ord("K"))) || (keyboard_check_pressed(ord("J"))) && (global.player_life <= 1) && (powerup != 0))
{
	audio_play_sound(sfx_error,10,false,1);
}

