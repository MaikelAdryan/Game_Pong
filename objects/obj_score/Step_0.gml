/// @description 
// 
var _goals_for_wins = global.number_for_win_game;
if global.number_goals_player_one >= _goals_for_wins or global.number_goals_player_two >= _goals_for_wins {
	global.number_goals_player_one = 0;
	global.number_goals_player_two = 0;
	game_restart();
}
