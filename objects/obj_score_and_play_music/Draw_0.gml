/// @description Desenhando o placar
//
// setando alinhamentos e cor da fonte
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_lora);

if room == rm_initial exit;
#region Desehando
draw_text(220, 29, "Player: " + string(global.number_goals_player_one));
draw_text(683, 29, "vs");
var _two_players_or_cpu = not global.two_players ? "CPU: " : "Player 2: ";
draw_text(1135, 29, _two_players_or_cpu + string(global.number_goals_player_two));
#endregion
