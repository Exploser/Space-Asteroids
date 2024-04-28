/// @description Insert description here
// You can write your code in this editor


_is_being_dragged = false;

switch(setting)
{
	case "music":
		global.music_vol = _amount_current;
		audio_sound_gain(snd_music, _amount_current/100, 0);
	break;
	case "sound":
		global.sound_vol = _amount_current
		audio_group_set_gain(audio_sfx, _amount_current/100, 0)
	break;
}