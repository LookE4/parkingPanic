/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 1A364C94
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l1A364C94_0 = place_empty(x + 0, y + 0);
if (l1A364C94_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 404C576F
	/// @DnDParent : 1A364C94
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 69322837
	/// @DnDParent : 1A364C94
	/// @DnDArgument : "spriteind" "spr_car_right"
	/// @DnDSaveInfo : "spriteind" "spr_car_right"
	sprite_index = spr_car_right;
	image_index = 0;
}