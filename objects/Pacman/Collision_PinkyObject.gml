/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56807784
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
if(global.is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0ED9DDEB
	/// @DnDParent : 56807784
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 79E3877A
	/// @DnDApplyTo : other
	/// @DnDParent : 56807784
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67ECCEDC
	/// @DnDParent : 56807784
	/// @DnDArgument : "xpos" "384"
	/// @DnDArgument : "ypos" "420"
	/// @DnDArgument : "objectid" "PinkyObject"
	/// @DnDArgument : "layer" ""Respawn""
	/// @DnDSaveInfo : "objectid" "PinkyObject"
	instance_create_layer(384, 420, "Respawn", PinkyObject);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5ACBD511
	/// @DnDApplyTo : {PinkyObject}
	/// @DnDParent : 56807784
	/// @DnDArgument : "direction" "90"
	with(PinkyObject) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 097AD00E
	/// @DnDApplyTo : {PinkyObject}
	/// @DnDParent : 56807784
	/// @DnDArgument : "speed" "1"
	with(PinkyObject) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5CE84423
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64566B31
	/// @DnDParent : 5CE84423
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47F93D4A
		/// @DnDParent : 64566B31
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 20E3DD5C
		/// @DnDParent : 64566B31
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l20E3DD5C_0 = PacDies_snd;
		if (!audio_is_playing(l20E3DD5C_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4F0DFCF3
			/// @DnDParent : 20E3DD5C
			/// @DnDArgument : "spriteind" "PacDies"
			/// @DnDSaveInfo : "spriteind" "PacDies"
			sprite_index = PacDies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 7DD4FEF8
			/// @DnDParent : 20E3DD5C
			speed = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 3FA5DE18
			/// @DnDParent : 20E3DD5C
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20AEFDF6
		/// @DnDParent : 64566B31
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 5D927F90
			/// @DnDParent : 20AEFDF6
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3271BF97
		/// @DnDParent : 64566B31
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5479A645
			/// @DnDParent : 3271BF97
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}