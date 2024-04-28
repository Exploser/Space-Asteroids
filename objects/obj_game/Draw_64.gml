/// @description Insert description here
// You can write your code in this editor

//Drawing Current Score
draw_text(500, 10, global.current_score);

//Drawing Highscore
if (global.highscore > 0)
{
	var _h_align = draw_get_halign();
	var _v_align = draw_get_valign();
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(0,10,"Highscore "+string(global.highscore));
	draw_set_halign(_h_align);
	draw_set_valign(_v_align);
}

if fantastic == true
{
	draw_text(50,10,"Fantastic");
	alarm[1] = 250;
}

if (global.player_life == 3)
{
	draw_sprite(spr_player_heatlh,2,10,900);
}

if (global.player_life == 2)
{
	draw_sprite(spr_player_heatlh,1,10,900);
}

if (global.player_life == 1)
{
	draw_sprite(spr_player_heatlh,0,10,900);
}

if (!(player_alive))
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2,room_height/2,"You died. Press space to restart.");
}

if (new_highscore == true)
{
	draw_text_color(room_width/2,(room_height/2) - 50,"NEW HIGHSCORE !!!",c_red,c_red,c_aqua,c_aqua,1);
}