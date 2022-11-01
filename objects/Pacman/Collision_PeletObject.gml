/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 18DC66A3
/// @DnDArgument : "soundid" "Pellet_snd"
/// @DnDSaveInfo : "soundid" "Pellet_snd"
audio_play_sound(Pellet_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CABF3C9
/// @DnDArgument : "expr" "score+10"
/// @DnDArgument : "var" "score"
score = score+10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A7218FF
/// @DnDArgument : "expr" "global.pelletCounter-1"
/// @DnDArgument : "var" "global.pelletCounter"
global.pelletCounter = global.pelletCounter-1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 442692B6
/// @DnDArgument : "var" "global.pillCounter"
if(global.pillCounter == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FF8EB1C
	/// @DnDParent : 442692B6
	/// @DnDArgument : "var" "global.pelletCounter"
	if(global.pelletCounter == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 79D94BCF
		/// @DnDParent : 3FF8EB1C
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B315A22
/// @DnDArgument : "var" "global.pelletCounter"
if(global.pelletCounter == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 617A96DB
	/// @DnDParent : 0B315A22
	/// @DnDArgument : "var" "global.pillCounter"
	if(global.pillCounter == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5D46E0D9
		/// @DnDParent : 617A96DB
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5267D708
/// @DnDApplyTo : other
with(other) instance_destroy();