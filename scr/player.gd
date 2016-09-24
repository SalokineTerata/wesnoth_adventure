
extends RigidBody2D

export var player_speed = 200

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)

func _fixed_process(delta):
	var btn_left = Input.is_action_pressed("ui_left")
	var btn_right = Input.is_action_pressed("ui_right")
	
	if btn_left:
		set_linear_velocity(Vector2(-player_speed, get_linear_velocity().y))
	elif btn_right:
		set_linear_velocity(Vector2(player_speed, get_linear_velocity().y))
	else:
		set_linear_velocity(Vector2(0, get_linear_velocity().y))