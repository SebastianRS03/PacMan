/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FAAE229
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
if(global.is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1928625C
	/// @DnDApplyTo : {BlueObject}
	/// @DnDParent : 5FAAE229
	with(BlueObject) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 41E9E92D
	/// @DnDParent : 5FAAE229
	/// @DnDArgument : "xpos" "384"
	/// @DnDArgument : "ypos" "420"
	/// @DnDArgument : "objectid" "BlueObject"
	/// @DnDArgument : "layer" ""Respawn""
	/// @DnDSaveInfo : "objectid" "BlueObject"
	instance_create_layer(384, 420, "Respawn", BlueObject);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C0D33F5
	/// @DnDApplyTo : {BlueObject}
	/// @DnDParent : 5FAAE229
	/// @DnDArgument : "direction" "90"
	with(BlueObject) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2B5B6E8E
	/// @DnDApplyTo : {BlueObject}
	/// @DnDParent : 5FAAE229
	/// @DnDArgument : "speed" "1"
	with(BlueObject) speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 389A9C02
	/// @DnDParent : 5FAAE229
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 622FCB83
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29D97AEA
	/// @DnDParent : 622FCB83
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 223A9476
		/// @DnDParent : 29D97AEA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 3EA8330D
		/// @DnDParent : 29D97AEA
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l3EA8330D_0 = PacDies_snd;
		if (!audio_is_playing(l3EA8330D_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6C065EAF
			/// @DnDParent : 3EA8330D
			/// @DnDArgument : "spriteind" "PacDies"
			/// @DnDSaveInfo : "spriteind" "PacDies"
			sprite_index = PacDies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 478B6F0B
			/// @DnDParent : 3EA8330D
			speed = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 11ADC218
			/// @DnDParent : 3EA8330D
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F933E22
		/// @DnDParent : 29D97AEA
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 1D7B8BF7
			/// @DnDParent : 6F933E22
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0317208C
		/// @DnDParent : 29D97AEA
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3A551974
			/// @DnDParent : 0317208C
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}