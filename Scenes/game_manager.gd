extends Node

@onready var player: CharacterBody2D = $"../Player"
var follow = true
var cam2_on = false
var cam3_on = false
@onready var game_cam: Camera2D = %GameCamR1
@onready var game_cam_r_2: Camera2D = %GameCamR2
@onready var game_cam_r_3: Camera2D = %GameCamR3
@onready var checkpoint_1: Marker2D = $"../Checkpoints/Checkpoint1"


func _physics_process(delta: float) -> void:
	if game_cam.enabled == true:
		game_cam.position.x = player.position.x
	if game_cam_r_2.enabled == true:
		game_cam_r_2.position.x = player.position.x
	if game_cam_r_3.enabled == true:
		game_cam_r_3.position.x = player.position.x
		game_cam_r_3.position.y = player.position.y
	
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


func _on_reset_body_entered(body: Node2D) -> void:
	player.position = checkpoint_1.position
