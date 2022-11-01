/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 687A44F6
/// @DnDArgument : "key" "vk_left"
var l687A44F6_0;
l687A44F6_0 = keyboard_check_pressed(vk_left);
if (l687A44F6_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 19B5CDCD
	/// @DnDParent : 687A44F6
	/// @DnDArgument : "angle" "180"
	image_angle = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 06ACD4EE
	/// @DnDParent : 687A44F6
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5F0D519D
	/// @DnDParent : 687A44F6
	/// @DnDArgument : "speed" "-speed"
	/// @DnDArgument : "type" "1"
	hspeed = -speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 59A2128E
/// @DnDArgument : "key" "vk_down"
var l59A2128E_0;
l59A2128E_0 = keyboard_check_pressed(vk_down);
if (l59A2128E_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 2C59D09D
	/// @DnDParent : 59A2128E
	/// @DnDArgument : "angle" "270"
	image_angle = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 7EC05650
	/// @DnDParent : 59A2128E
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52BD4865
	/// @DnDParent : 59A2128E
	/// @DnDArgument : "speed" "speed"
	/// @DnDArgument : "type" "2"
	vspeed = speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 50D47188
/// @DnDArgument : "key" "vk_up"
var l50D47188_0;
l50D47188_0 = keyboard_check_pressed(vk_up);
if (l50D47188_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 562EC6D4
	/// @DnDParent : 50D47188
	/// @DnDArgument : "angle" "90"
	image_angle = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 0479E920
	/// @DnDParent : 50D47188
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 38C88A50
	/// @DnDParent : 50D47188
	/// @DnDArgument : "speed" "-speed"
	/// @DnDArgument : "type" "2"
	vspeed = -speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 554A6F07
/// @DnDArgument : "key" "vk_right"
var l554A6F07_0;
l554A6F07_0 = keyboard_check_pressed(vk_right);
if (l554A6F07_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 434762A9
	/// @DnDParent : 554A6F07
	image_angle = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 4104506D
	/// @DnDParent : 554A6F07
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6CEB73DE
	/// @DnDParent : 554A6F07
	/// @DnDArgument : "speed" "speed"
	/// @DnDArgument : "type" "1"
	hspeed = speed;
}