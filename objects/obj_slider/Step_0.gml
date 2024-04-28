/// @description Insert description here
// You can write your code in this editor

if(_is_being_dragged == true) 
{
	if (mouse_x > x)
	{
		var _xx = abs(x - mouse_x);
		var _amount = _xx/sprite_width;
	
		_amount = clamp(_amount, 0, 1);
		_amount_current = _amount*100;
	}
	else 
	{
		_amount_current = 0;
	}
}
