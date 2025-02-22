extends Node

@onready var player: CharacterBody2D = $"../Player"
var follow = true
var cam2_on = false
var cam3_on = false
var cam4_on = false
var cam5_on = false
var cam6_on = false
var cam7_on = false
var cam8_on = false
var cam9_on = false
var cam10_on = false
var cam11_on = false
@onready var game_cam: Camera2D = %GameCamR1
@onready var game_cam_r_2: Camera2D = %GameCamR2
@onready var game_cam_r_3: Camera2D = %GameCamR3
@onready var game_cam_r_4: Camera2D = %GameCamR4
@onready var game_cam_r_5: Camera2D = %GameCamR5
@onready var game_cam_r_6: Camera2D = %GameCamR6
@onready var game_cam_r_7: Camera2D = %GameCamR7
@onready var game_cam_r_8: Camera2D = %GameCamR8
@onready var game_cam_r_9: Camera2D = %GameCamR9

@onready var checkpoint_1: Marker2D = $"../Checkpoints/Checkpoint1"
@onready var checkpoint_2: Marker2D = $"../Checkpoints/Checkpoint2"
@onready var checkpoint_3: Marker2D = $"../Checkpoints/Checkpoint3"

@onready var spring_5: Area2D = $"../Springs/Spring5"

@onready var spawn: Marker2D = $"../Spawn"

@onready var music_1: AudioStreamPlayer2D = $"../Music1"
@onready var music_2: AudioStreamPlayer2D = $"../Music2"
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"

@onready var timer: Timer = $"../Timer"



func _ready() -> void:
	player.global_position = spawn.global_position
	
func _on_button_pressed() -> void:
	#if DataHandler.on_off == true:
	#	DataHandler.on_off = false
	#elif DataHandler.on_off == false:
	#	DataHandler.on_off = true
		
	print(str(DataHandler.coins))
	print(str(DataHandler.gems))
	print(str(DataHandler.diamonds))
	print(str(DataHandler.tressure))
	print(str(DataHandler.final_score))
	
	print(str(DataHandler.on_off))

func _process(delta: float) -> void:
	if DataHandler.happy_hour == true:
		music_1.playing = false
		animation_player.play("escape")
		timer.start()
		
	
func _physics_process(delta: float) -> void:
	
	
	
	if game_cam.enabled == true:
		game_cam.position.x = player.position.x
	if game_cam_r_2.enabled == true:
		game_cam_r_2.position.x = player.position.x
	if game_cam_r_3.enabled == true:
		game_cam_r_3.position.x = player.position.x
		game_cam_r_3.position.y = player.position.y
	if game_cam_r_5.enabled == true:
		game_cam_r_5.position.x = player.position.x
		game_cam_r_5.position.y = player.position.y
	if game_cam_r_6.enabled == true:
		game_cam_r_6.position.x = player.position.x
	if game_cam_r_8.enabled == true:
		game_cam_r_8.position.x = player.position.x
	if game_cam_r_9.enabled == true:
		game_cam_r_9.position.x = player.position.x
		
func _on_cam_trig_body_entered(body: Node2D) -> void:
	if cam2_on == false:
		game_cam.enabled = false
		game_cam_r_2.enabled = true
		cam2_on = true
		
	elif cam2_on == true:
		game_cam.enabled = true
		game_cam_r_2.enabled = false
		cam2_on = false
		
	
func _on_cam_trig_2_body_entered(body: Node2D) -> void:
	if cam3_on == false:
		game_cam_r_2.enabled = false
		game_cam_r_3.enabled = true
		cam3_on = true
		
	elif cam3_on == true:
		game_cam_r_2.enabled = true
		game_cam_r_3.enabled = false
		cam3_on = false


func _on_cam_trig_3_body_entered(body: Node2D) -> void:
	if cam4_on == false:
		game_cam_r_3.enabled = false
		game_cam_r_4.enabled = true
		cam4_on = true
		
	elif cam4_on == true:
		game_cam_r_3.enabled = true
		game_cam_r_4.enabled = false
		cam4_on = false


func _on_cam_trig_4_body_entered(body: Node2D) -> void:
	if cam5_on == false:
		game_cam_r_4.enabled = false
		game_cam_r_5.enabled = true
		cam5_on = true
		
	elif cam5_on == true:
		game_cam_r_4.enabled = true
		game_cam_r_5.enabled = false
		cam5_on = false


func _on_cam_trig_5_body_entered(body: Node2D) -> void:
	if cam6_on == false:
		game_cam_r_5.enabled = false
		game_cam_r_6.enabled = true
		cam6_on = true
		
	elif cam6_on == true:
		game_cam_r_5.enabled = true
		game_cam_r_6.enabled = false
		cam6_on = false


func _on_cam_trig_6_body_entered(body: Node2D) -> void:
	if cam7_on == false:
		game_cam_r_6.enabled = false
		game_cam_r_7.enabled = true
		cam7_on = true
		
	elif cam7_on == true:
		game_cam_r_6.enabled = true
		game_cam_r_7.enabled = false
		cam7_on = false


func _on_cam_trig_7_body_entered(body: Node2D) -> void:
	if cam8_on == false:
		game_cam_r_7.enabled = false
		game_cam_r_8.enabled = true
		cam8_on = true
		
	elif cam8_on == true:
		game_cam_r_7.enabled = true
		game_cam_r_8.enabled = false
		cam8_on = false
	checkpoint_1.position.x = 3904
	checkpoint_1.position.y = 576
	checkpoint_2.position.x = 4288
	checkpoint_2.position.y = 224
	checkpoint_3.position.x = 4896
	checkpoint_3.position.y = 144
	


func _on_cam_trig_8_body_entered(body: Node2D) -> void:
	if cam9_on == false:
		game_cam_r_8.enabled = false
		game_cam_r_5.enabled = true
		cam9_on = true
		
	elif cam9_on == true:
		game_cam_r_8.enabled = true
		game_cam_r_5.enabled = false
		cam9_on = false
		


func _on_cam_trig_9_body_entered(body: Node2D) -> void:
	if cam10_on == false:
		game_cam_r_3.enabled = false
		game_cam_r_9.enabled = true
		cam10_on = true
		
	elif cam10_on == true:
		game_cam_r_3.enabled = true
		game_cam_r_9.enabled = false
		cam10_on = false

#2192
func _on_cam_trig_10_body_entered(body: Node2D) -> void:
	if cam11_on == false:
		game_cam_r_9.enabled = false
		game_cam_r_2.enabled = true
		cam11_on = true
		
	elif cam11_on == true:
		game_cam_r_9.enabled = true
		game_cam_r_2.enabled = false
		cam11_on = false
	game_cam_r_2.limit_right = 2192
	spring_5.position.x = 104


func _on_timer_timeout() -> void:
	pass # Replace with function body.


func _on_cam_trig_11_body_entered(body: Node2D) -> void:
	animation_player.play("done")
