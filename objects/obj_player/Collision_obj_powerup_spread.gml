/// @description Insert description here
// You can write your code in this editor

powerup = 1;
alarm[0] = 10 * 60;
image_blend = c_yellow;
audio_play_sound(sfx_powerup_spread,10,false,1,0);
instance_destroy(other);
