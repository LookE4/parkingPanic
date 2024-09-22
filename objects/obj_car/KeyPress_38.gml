/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 43D66177
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l43D66177_0 = place_empty(x + 0, y + 0);
if (l43D66177_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 427BEA7A
	/// @DnDParent : 43D66177
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7CAA1A04
	/// @DnDParent : 43D66177
	/// @DnDArgument : "spriteind" "spr_car_up"
	/// @DnDSaveInfo : "spriteind" "spr_car_up"
	sprite_index = spr_car_up;
	image_index = 0;
}