/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 651592F9
/// @DnDArgument : "var" "global.is_frozen"
/// @DnDArgument : "value" "1"
if(global.is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E47C5F5
	/// @DnDParent : 651592F9
	/// @DnDArgument : "expr" "score+300"
	/// @DnDArgument : "var" "score"
	score = score+300;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F8683D9
	/// @DnDApplyTo : other
	/// @DnDParent : 651592F9
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1C3A570E
	/// @DnDParent : 651592F9
	/// @DnDArgument : "xpos" "384"
	/// @DnDArgument : "ypos" "420"
	/// @DnDArgument : "objectid" "OrangeObject"
	/// @DnDArgument : "layer" ""Respawn""
	/// @DnDSaveInfo : "objectid" "OrangeObject"
	instance_create_layer(384, 420, "Respawn", OrangeObject);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0A3A63A4
	/// @DnDApplyTo : {OrangeObject}
	/// @DnDParent : 651592F9
	/// @DnDArgument : "direction" "90"
	with(OrangeObject) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5D3554B5
	/// @DnDApplyTo : {OrangeObject}
	/// @DnDParent : 651592F9
	/// @DnDArgument : "speed" "1"
	with(OrangeObject) speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01AC961E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 209CDE9F
	/// @DnDParent : 01AC961E
	/// @DnDArgument : "var" "global.is_dying"
	if(global.is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2546BE9C
		/// @DnDParent : 209CDE9F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.is_dying"
		global.is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 39C5D753
		/// @DnDParent : 209CDE9F
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l39C5D753_0 = PacDies_snd;
		if (!audio_is_playing(l39C5D753_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 678D440D
			/// @DnDParent : 39C5D753
			/// @DnDArgument : "spriteind" "PacDies"
			/// @DnDSaveInfo : "spriteind" "PacDies"
			sprite_index = PacDies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5ADC6B99
			/// @DnDParent : 39C5D753
			speed = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7F3AF663
			/// @DnDParent : 39C5D753
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 205605E1
		/// @DnDParent : 209CDE9F
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(!(lives > 1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 51562B1D
			/// @DnDParent : 205605E1
			/// @DnDArgument : "room" "GameOver"
			/// @DnDSaveInfo : "room" "GameOver"
			room_goto(GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1675D1C5
		/// @DnDParent : 209CDE9F
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 03AE7866
			/// @DnDParent : 1675D1C5
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}
}