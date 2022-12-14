extends "res://tanks/Tank.gd"


func control(delta):
	# 让炮口指向鼠标位置
	$Turret.look_at(get_global_mouse_position())
	# 控制上下左右	移动
	# 旋转
	var rot_dir = 0
	if Input.is_action_pressed("turn_right"):
		rot_dir += 1
	if Input.is_action_pressed("turn_left"):
		rot_dir -= 1
	rotation += rotation_speed * rot_dir * delta
	velocity = Vector2()
	if Input.is_action_pressed("forward"):
		velocity = Vector2(speed, 0).rotated(rotation)
	if Input.is_action_pressed("back"):
		velocity = Vector2(-speed/2, 0).rotated(rotation)

