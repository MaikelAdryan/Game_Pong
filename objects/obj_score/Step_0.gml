/// @description 
// 
var _goals_for_wins = global.number_for_win_game - 1;
var _goals_player_one = global.number_goals_player_one;
var _goals_player_two = global.number_goals_player_two;

if _goals_player_one > _goals_for_wins global.number_wins_player_one++
if _goals_player_two > _goals_for_wins global.number_wins_player_two++

if _goals_player_one > _goals_for_wins
or _goals_player_two > _goals_for_wins {
	global.number_goals_player_one = 0;
	global.number_goals_player_two = 0;
	room_goto_next();
}
