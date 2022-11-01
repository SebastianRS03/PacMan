/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2368FF01
/// @DnDArgument : "soundid" "Pellet_snd"
/// @DnDSaveInfo : "soundid" "Pellet_snd"
audio_play_sound(Pellet_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53432C0A
/// @DnDArgument : "expr" "score+100"
/// @DnDArgument : "var" "score"
score = score+100;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 27C6343E
/// @DnDApplyTo : {BlueObject}
/// @DnDArgument : "spriteind" "Frozen"
/// @DnDSaveInfo : "spriteind" "Frozen"
with(BlueObject) {
sprite_index = Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 64F98BB6
/// @DnDApplyTo : {OrangeObject}
/// @DnDArgument : "spriteind" "Frozen"
/// @DnDSaveInfo : "spriteind" "Frozen"
with(OrangeObject) {
sprite_index = Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 15593A8F
/// @DnDApplyTo : {PinkyObject}
/// @DnDArgument : "spriteind" "Frozen"
/// @DnDSaveInfo : "spriteind" "Frozen"
with(PinkyObject) {
sprite_index = Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 76FFBFFB
/// @DnDApplyTo : {RedObject}
/// @DnDArgument : "spriteind" "Frozen"
/// @DnDSaveInfo : "spriteind" "Frozen"
with(RedObject) {
sprite_index = Frozen;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 27E2ECAC
/// @DnDApplyTo : {BlueObject}
/// @DnDArgument : "speed" "1"
with(BlueObject) speed = 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 79B4941C
/// @DnDApplyTo : {OrangeObject}
/// @DnDArgument : "speed" "1"
with(OrangeObject) speed = 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4C97B48C
/// @DnDApplyTo : {PinkyObject}
/// @DnDArgument : "speed" "1"
with(PinkyObject) speed = 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5CBD411D
/// @DnDApplyTo : {RedObject}
/// @DnDArgument : "speed" "1"
with(RedObject) speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18C0C331
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.is_frozen"
global.is_frozen = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DDE905C
/// @DnDArgument : "expr" "global.pillCounter-1"
/// @DnDArgument : "var" "global.pillCounter"
global.pillCounter = global.pillCounter-1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20BC2186
/// @DnDArgument : "var" "global.pillCounter"
if(global.pillCounter == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 664D8B78
	/// @DnDParent : 20BC2186
	/// @DnDArgument : "var" "global.pelletCounter"
	if(global.pelletCounter == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4AB53788
		/// @DnDParent : 664D8B78
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C223EF1
/// @DnDArgument : "var" "global.pelletCounter"
if(global.pelletCounter == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DCEE0DF
	/// @DnDParent : 0C223EF1
	/// @DnDArgument : "var" "global.pillCounter"
	if(global.pillCounter == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7CC06FCC
		/// @DnDParent : 7DCEE0DF
		/// @DnDArgument : "room" "GameOver"
		/// @DnDSaveInfo : "room" "GameOver"
		room_goto(GameOver);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2B29EB1D
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0F7EBDE6
/// @DnDArgument : "steps" "250"
alarm_set(0, 250);