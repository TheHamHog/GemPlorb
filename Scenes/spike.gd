extends Node2D
@export var checkpoint : Marker2D


func _on_hitbox_body_entered(body: Node2D) -> void:
	body.position = checkpoint.position
