extends CharacterBody2D

signal health_changed
signal dead
# 子弹
@export var Bullet: PackedScene
# 坦克移动速度
@export var speed: int = 150
# 坦克旋转速度
@export var rotation_speed: float=1
# 开炮冷却时间
@export var gun_cooldown: float=0.4
# 坦克的护甲或血量
@export var health: int=100

# 速度向量
# var velocity = Vector2()
# key开火标记
var can_shot = true
# 坦克存活标记
var alive = true

func _ready():
	$GunTimer.wait_time = gun_cooldown

func control(delta):
	# 玩家由玩家控制
	# 其他由AI控制
	pass
	

func _physics_process(delta):
	if not alive:
		return
	control(delta)

	move_and_slide()
