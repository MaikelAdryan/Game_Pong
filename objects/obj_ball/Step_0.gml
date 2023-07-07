/// @description 
// startando a velocidade da bola quando o jogo iniciar
if start_game { speed_ball = 2; start_game = false; }
speed = speed_ball;

#region Colisões
if place_meeting(x, y, obj_player)
or place_meeting(x, y, obj_player_two) 
or place_meeting(x, y, obj_collisor) {
	move_bounce_solid(true);
	speed_ball += .5;
	audio_play_sound(snd_boing, 1, false);
}
#endregion

#region Gol
if place_meeting(x, y, obj_goal) {
	var _half_room = room_width / 2;
	if x > _half_room global.number_goals_player_one++; else if x < _half_room global.number_goals_player_two++;
	x = xstart; y = ystart; speed = 0; speed_ball = 0;
	if not global.two_players { var _player_two = obj_player_two; _player_two.y = _player_two.ystart; _player_two.x = _player_two.xstart; }
	alarm[0] = game_get_speed(gamespeed_fps) * 3;
}

#endregion