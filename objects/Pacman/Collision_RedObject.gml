/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 276950D9
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
if(global.is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3571354F
	/// @DnDParent : 276950D9
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1BEB5214
	/// @DnDApplyTo : other
	/// @DnDParent : 276950D9
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6F3E55D3
	/// @DnDParent : 276950D9
	/// @DnDArgument : "xpos" "384"
	/// @DnDArgument : "ypos" "420"
	/// @DnDArgument : "objectid" "RedObject"
	/// @DnDArgument : "layer" ""Respawn""
	/// @DnDSaveInfo : "objectid" "RedObject"
	instance_create_layer(384, 420, "Respawn", RedObject);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3F56859E
	/// @DnDApplyTo : {RedObject}
	/// @DnDParent : 276950D9
	/// @DnDArgument : "direction" "90"
	with(RedObject) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 13DAD8DC
	/// @DnDApplyTo : {RedObject}
	/// @DnDParent : 276950D9
	/// @DnDArgument : "speed" "1"
	with(RedObject) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0B77D7F7
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DB947DD
	/// @DnDParent : 0B77D7F7
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CDF4A2B
		/// @DnDParent : 3DB947DD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 08CBBB1F
		/// @DnDParent : 3DB947DD
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l08CBBB1F_0 = PacDies_snd;
		if (!audio_is_playing(l08CBBB1F_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 56A195E6
			/// @DnDParent : 08CBBB1F
			/// @DnDArgument : "spriteind" "PacDies"
			/// @DnDSaveInfo : "spriteind" "PacDies"
			sprite_index = PacDies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5855613A
			/// @DnDParent : 08CBBB1F
			speed = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5BB87A4B
			/// @DnDParent : 08CBBB1F
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D5C6F37
		/// @DnDParent : 3DB947DD
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 787E3EAA
			/// @DnDParent : 5D5C6F37
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 70F7EFA7
		/// @DnDParent : 3DB947DD
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0701053E
			/// @DnDParent : 70F7EFA7
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}