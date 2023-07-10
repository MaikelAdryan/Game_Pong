/// @description Play na musica de fundo
// 
if audio_is_playing(snd_background) exit;
audio_play_sound(snd_background, 1, true);