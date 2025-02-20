extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -300.0
@onready var animation: AnimatedSprite2D = $animation
@onready var hit_animation: AnimatedSprite2D = $HitAnimation
@onready var slash: Area2D = %slash
@onready var point_right: Marker2D = $PointRight
@onready var point_left: Marker2D = $PointLeft
@onready var atk_speed: Timer = $AtkSpeed
var jumped = 0
var health = 10

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	if is_on_floor():
		jumped = 0
	# Handle jump.
	if Input.is_action_just_pressed("jump") and jumped < 2:
		velocity.y = JUMP_VELOCITY
		jumped += 1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	#Slash
	if Input.is_action_just_pressed("hit") and atk_speed.is_stopped():
		slash.monitoring = true
		hit_animation.play("slash")
		atk_speed.start(0.6)
	if Input.is_action_just_released("hit"):
		slash.monitoring = false 
		

	#Animation
	if direction > 0:
		animation.flip_h = false
		slash.global_position = point_right.global_position
		hit_animation.flip_h = false
		hit_animation.position.x = 13
	elif direction < 0:
		animation.flip_h = true 
		slash.global_position = point_left.global_position
		hit_animation.flip_h = true
		hit_animation.position.x = -15
		
	if is_on_floor():
		if direction == 0:
			animation.play("idle")
		else:
			animation.play("run")
	else:
		animation.play("jump")

	if not is_on_floor() and velocity.y > -1:
		animation.play("fall")
		
		
		
