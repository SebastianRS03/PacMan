/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 270A94BE
/// @DnDArgument : "var" "global.portal1"
global.portal1 = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C37C164
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2F35EFC2
/// @DnDArgument : "xpos" "70"
/// @DnDArgument : "ypos" "420"
/// @DnDArgument : "objectid" "Pacman"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "Pacman"
instance_create_layer(70, 420, "Respawn", Pacman);