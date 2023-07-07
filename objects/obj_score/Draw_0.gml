/// @description 
// 
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(220, 29, "Player: " + string(global.number_goals_player_one));
var _two_players_or_cpu = not global.two_players ? "CPU: " : "Player 2: ";
draw_text(1135, 29, _two_players_or_cpu + string(global.number_goals_player_two));
draw_set_lighting(true);
draw_light_define_direction(1, 0, 1, 0, c_red);
draw_light_enable(1, true);
draw_set_color(-1);
draw_set_valign(-1);
draw_set_halign(-1);