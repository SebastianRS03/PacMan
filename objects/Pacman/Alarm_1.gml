/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 31EB812F
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 354358F1
/// @DnDApplyTo : {BlueObject}
with(BlueObject) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6A6BC7CB
/// @DnDApplyTo : {OrangeObject}
with(OrangeObject) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5FECA410
/// @DnDApplyTo : {PinkyObject}
with(PinkyObject) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 71DC34D4
/// @DnDApplyTo : {RedObject}
with(RedObject) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28718B35
/// @DnDArgument : "expr" "lives-1"
/// @DnDArgument : "var" "lives"
lives = lives-1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2AC93321
/// @DnDArgument : "xpos" "380"
/// @DnDArgument : "ypos" "630"
/// @DnDArgument : "objectid" "Pacman"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "Pacman"
instance_create_layer(380, 630, "Respawn", Pacman);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0324EEA2
/// @DnDArgument : "xpos" "385"
/// @DnDArgument : "ypos" "620"
/// @DnDArgument : "objectid" "BlueObject"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "BlueObject"
instance_create_layer(385, 620, "Respawn", BlueObject);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7C6DE449
/// @DnDArgument : "xpos" "384"
/// @DnDArgument : "ypos" "620"
/// @DnDArgument : "objectid" "OrangeObject"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "OrangeObject"
instance_create_layer(384, 620, "Respawn", OrangeObject);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 27B31276
/// @DnDArgument : "xpos" "383"
/// @DnDArgument : "ypos" "620"
/// @DnDArgument : "objectid" "PinkyObject"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "PinkyObject"
instance_create_layer(383, 620, "Respawn", PinkyObject);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4DC63B0A
/// @DnDArgument : "xpos" "382"
/// @DnDArgument : "ypos" "620"
/// @DnDArgument : "objectid" "RedObject"
/// @DnDArgument : "layer" ""Respawn""
/// @DnDSaveInfo : "objectid" "RedObject"
instance_create_layer(382, 620, "Respawn", RedObject);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F74A192
/// @DnDArgument : "var" "global.is_dying"
global.is_dying = 0;