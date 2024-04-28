/// @description Insert description here
// You can write your code in this editor
cursor = cr_none;

_amount_max = 100;
_amount_current = 0;
_is_being_dragged = false;

switch (setting)
{
	case "music":
		_amount_current = global.music_vol;
	break;
	case "sound":
		_amount_current = global.sound_vol;
	break;
}