/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20F8DFAA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.portal1"
global.portal1 = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 31F4411E
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 758AF1F1
/// @DnDArgument : "xpos" "700"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Pacman"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "Pacman"
instance_create_layer(700, 420, "Respawn", Pacman);