/// @description Movimentação e colisão
// 
#region Movimentação
if global.two_players {
	var _up = keyboard_check(inputs.up);
	var _down = keyboard_check(inputs.down);
	if _up vspeed -= .5 else if _down vspeed += .5; else vspeed = 0;
} else {
	vspeed = obj_ball.vspeed;
}
vspeed = clamp(vspeed, -speed_player, speed_player);

#endregion

#region Colisão com as paredes
if place_meeting(x, y + vspeed, obj_collisor) speed = 0;
#endregion
