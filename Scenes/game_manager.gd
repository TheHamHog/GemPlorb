extends Node

@onready var player: CharacterBody2D = $"../Player"
var follow = true
var cam2_on = false
var cam3_on = false
var cam4_on = false
var cam5_on = false
var cam6_on = false
@onready var game_cam: Camera2D = %GameCamR1
@onready var game_cam_r_2: Camera2D = %GameCamR2
@onready var game_cam_r_3: Camera2D = %GameCamR3
@onready var game_cam_r_4: Camera2D = %GameCamR4
@onready var game_cam_r_5: Camera2D = %GameCamR5
@onready var game_cam_r_6: Camera2D = %GameCamR6


@onready var checkpoint_1: Marker2D = $"../Checkpoints/Checkpoint1"

func _on_button_pressed() -> void:
	if DataHandler.on_off == true:
		DataHandler.on_off = false
	elif DataHandler.on_off == false:
		DataHandler.on_off = true
	
	print(str(DataHandler.on_off))
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
