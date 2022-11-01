/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0C869EF2
/// @DnDArgument : "soundid" "FirstLevelStart_snd"
/// @DnDSaveInfo : "soundid" "FirstLevelStart_snd"
audio_play_sound(FirstLevelStart_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 04833A80
/// @DnDArgument : "score" "lives"

__dnd_score = real(lives);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78BC30E2
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lives"
lives = 3;