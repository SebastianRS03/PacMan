/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4143CABE
/// @DnDApplyTo : {BlueObject}
/// @DnDArgument : "spriteind" "Blue"
/// @DnDSaveInfo : "spriteind" "Blue"
with(BlueObject) {
sprite_index = Blue;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 13BDFB34
/// @DnDApplyTo : {OrangeObject}
/// @DnDArgument : "spriteind" "Orange"
/// @DnDSaveInfo : "spriteind" "Orange"
with(OrangeObject) {
sprite_index = Orange;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 575EF63D
/// @DnDApplyTo : {PinkyObject}
/// @DnDArgument : "spriteind" "Pinky"
/// @DnDSaveInfo : "spriteind" "Pinky"
with(PinkyObject) {
sprite_index = Pinky;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4915FAEF
/// @DnDApplyTo : {RedObject}
/// @DnDArgument : "spriteind" "Red"
/// @DnDSaveInfo : "spriteind" "Red"
with(RedObject) {
sprite_index = Red;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 07373A2D
/// @DnDApplyTo : {BlueObject}
/// @DnDArgument : "speed" "2"
with(BlueObject) speed = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 74C3E202
/// @DnDApplyTo : {OrangeObject}
/// @DnDArgument : "speed" "2"
with(OrangeObject) speed = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1F235363
/// @DnDApplyTo : {PinkyObject}
/// @DnDArgument : "speed" "2"
with(PinkyObject) speed = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1A1A0FBF
/// @DnDApplyTo : {RedObject}
/// @DnDArgument : "speed" "2"
with(RedObject) speed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 459D4FA7
/// @DnDArgument : "var" "global.is_frozen"
global.is_frozen = 0;