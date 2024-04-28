if (_mode == 0)
{
	audio_play_sound(snd_music,10,false);
	_mode = 1;
}
else if ( _mode == 1)
{
	audio_pause_sound(snd_music);
	_mode = 0;
}
	