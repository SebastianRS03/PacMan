/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 166D0CCB
/// @DnDArgument : "var" "global.portal1"
/// @DnDArgument : "value" "1"
if(global.portal1 == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6D3A6992
	/// @DnDParent : 166D0CCB
	/// @DnDArgument : "angle" "180"
	image_angle = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 2FC3B422
	/// @DnDParent : 166D0CCB
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1A1F1734
	/// @DnDParent : 166D0CCB
	/// @DnDArgument : "speed" "-3"
	/// @DnDArgument : "type" "1"
	hspeed = -3;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 067F6C02
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33280AFA
	/// @DnDParent : 067F6C02
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "speed"
	speed = 3;
}