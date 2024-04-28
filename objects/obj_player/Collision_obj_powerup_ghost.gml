/// @description Insert description here
// You can write your code in this editor

powerup = 2;
alarm[1] = 10 * 60;
image_blend = c_white;
image_alpha = 0.4;
audio_play_sound(sfx_shield_up,10,false,1,0);
instance_destroy(other);
