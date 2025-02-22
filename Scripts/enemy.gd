extends Area2D
var speed = 50
var direction = 1
var health = 1
@onready var right: RayCast2D = $Right
@onready var left: RayCast2D = $Left
@onready var sprites: AnimatedSprite2D = $Sprites


func _process(delta: float) -> void:
	if right.is_colliding():
		direction = -1
		sprites.flip_h = true
	if left.is_colliding():
		direction = 1
		sprites.flip_h = false
	
	global_position.x += direction * speed * delta
	
	if health == 0:
		queue_free()
		

func break_box():
	health -= 1
