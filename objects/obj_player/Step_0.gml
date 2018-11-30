/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7ED35989
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7F61D7A8
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 06E9BEBB
var l06E9BEBB_0;
l06E9BEBB_0 = mouse_check_button(mb_left);
if (l06E9BEBB_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 089BEE64
	/// @DnDParent : 06E9BEBB
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "1"
	if(cooldown <= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 451636CC
		/// @DnDParent : 089BEE64
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""Layer_Bullet""
		/// @DnDSaveInfo : "objectid" "88d1c302-20a7-4500-bd82-1345268f0ca9"
		instance_create_layer(x, y, "Layer_Bullet", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6ED8F5BA
		/// @DnDParent : 089BEE64
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 4;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BCECEEB
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;