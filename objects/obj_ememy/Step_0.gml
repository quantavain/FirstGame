/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 764D4EF9
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "618ba2d2-8d31-4a99-83a0-218917117918"
var l764D4EF9_0 = false;
l764D4EF9_0 = instance_exists(obj_player);
if(l764D4EF9_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0BC2CAC3
	/// @DnDParent : 764D4EF9
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A96BE41
	/// @DnDParent : 764D4EF9
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4D16BB2F
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05CD9AF3
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A236C60
	/// @DnDApplyTo : 88c2e5b1-f3bf-4e94-835f-8e7daa0019e2
	/// @DnDParent : 05CD9AF3
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_score.thescore"
	with(obj_score) {
	obj_score.thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 5646CB7D
	/// @DnDParent : 05CD9AF3
	/// @DnDArgument : "sound" "smd_death"
	/// @DnDSaveInfo : "sound" "bd754c0a-db9b-4b4e-a953-96dd1cf60353"
	audio_sound_pitch(smd_death, 1);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4909B9D1
	/// @DnDParent : 05CD9AF3
	/// @DnDArgument : "soundid" "smd_death"
	/// @DnDSaveInfo : "soundid" "bd754c0a-db9b-4b4e-a953-96dd1cf60353"
	audio_play_sound(smd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B26332C
	/// @DnDParent : 05CD9AF3
	instance_destroy();
}