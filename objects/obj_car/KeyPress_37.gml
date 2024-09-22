/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 4E688EDD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l4E688EDD_0 = place_empty(x + 0, y + 0);
if (l4E688EDD_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 1AC3FFB9
	/// @DnDParent : 4E688EDD
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 15F7B549
	/// @DnDParent : 4E688EDD
	/// @DnDArgument : "spriteind" "spr_car_left"
	/// @DnDSaveInfo : "spriteind" "spr_car_left"
	sprite_index = spr_car_left;
	image_index = 0;
}