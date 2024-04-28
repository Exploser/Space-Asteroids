/// @description Insert description here
// You can write your code in this editor

draw_self();
//switch (setting)
//{
//	case "music":
//	draw_text(x, y, "Music Control");
//	break;
//	case "sound":
//	draw_text(x, y, "Sound Control");
//	break;
//}

var _knob_amount = _amount_current / _amount_max;

var _knob_position_x = x + (sprite_width*_knob_amount);

var _knob_position_y = y + (sprite_width/2);

draw_sprite(spr_knob, _is_being_dragged, _knob_position_x, y+10);
