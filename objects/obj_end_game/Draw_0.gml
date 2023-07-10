/// @description 
// 
var _two_players = global.two_players ? "Player 2 : " : "CPU : ";
draw_set_color(c_black);
draw_rectangle_colour(800, 250, 1000, 465, c_white, c_white, c_white, c_white, false);
draw_text(895, 285, "Pontuação");
draw_text(895, 350, "Player 1 : " + string(global.number_wins_player_one));
draw_text(895, 400, _two_players + string(global.number_wins_player_two));
