/// @description Insert description here
// You can write your code in this editor
try {
	if (global.player_sprite == undefined)
	{
		global.player_sprite = 0
	}

	switch (global.player_sprite)
	{
		case 1:
			sprite_index = spr_ship_orange;
		break;
		case 2:
			sprite_index = spr_ship_red;
		break;
		case 3:
			sprite_index = spr_ship_blue;
		break;
		case 0:
			sprite_index = spr_player;
		break;
	}
}
catch (error)
{
	global.player_sprite = 0
}
draw_self();

if (alarm[0] > 0)
{
	draw_set_halign(fa_center);
	var _time = round(alarm[0]/60);
	draw_text(x, y-60, _time);
	draw_set_halign(fa_left);
}
if (alarm[1] > 0)
{
	draw_set_halign(fa_center);
	var _time = round(alarm[1]/60);
	draw_text(x, y-60, _time);
	draw_set_halign(fa_left);
}

if (global.player_sprite == 5)
{
	sprite_index = spr_ufo;
}

