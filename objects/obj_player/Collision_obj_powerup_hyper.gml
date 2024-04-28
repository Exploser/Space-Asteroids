/// @description Insert description here
// You can write your code in this editor

powerup = 3;
alarm[0] = 4 * 60;
image_blend = c_red;
audio_play_sound(sfx_powerup_hyper,10,false,1,0);
instance_destroy(other);
