extends RigidBody2D

var velocity = Vector2(0,0)
const movement_speed = 200
const jump_force = -1100

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = movement_speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -movement_speed
	elif Input.is_action_pressed("ui_boost") and Input.is_action_pressed("ui_right"):
		velocity.x = movement_speed * 2
	elif Input.is_action_pressed("ui_boost") and Input.is_action_pressed("ui_left"):
		velocity.x = -movement_speed * 2
	elif Input.is_action_just_pressed("ui_up"):
		set_axis_velocity(Vector2(0,jump_force))
	else:
		velocity.x = 0
	set_axis_velocity(velocity)
	velocity.x = lerp(velocity.x,0,0.2)
		
	
