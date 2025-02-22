extends Area2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer





func _on_body_entered(body: Node2D) -> void:
	DataHandler.gems += 5
	animation_player.play("pickup")
