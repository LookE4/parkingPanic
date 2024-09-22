/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 7301E9F9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l7301E9F9_0 = place_empty(x + 0, y + 0);
if (l7301E9F9_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 27158E02
	/// @DnDParent : 7301E9F9
	/// @DnDArgument : "speed" "5"
	speed = 5;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1CE49F80
	/// @DnDParent : 7301E9F9
	/// @DnDArgument : "soundid" "sd_honk"
	/// @DnDSaveInfo : "soundid" "sd_honk"
	audio_play_sound(sd_honk, 0, 0);
}