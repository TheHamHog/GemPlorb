extends Area2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	DataHandler.happy_hour = true
	DataHandler.on_off = true
	DataHandler.tressure += 1000
	animation_player.play("pickup")
	
