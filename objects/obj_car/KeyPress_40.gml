/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 426B32D3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l426B32D3_0 = place_empty(x + 0, y + 0);
if (l426B32D3_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D2C188B
	/// @DnDParent : 426B32D3
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 67FC4FF7
	/// @DnDParent : 426B32D3
	/// @DnDArgument : "spriteind" "spr_car_down"
	/// @DnDSaveInfo : "spriteind" "spr_car_down"
	sprite_index = spr_car_down;
	image_index = 0;
}