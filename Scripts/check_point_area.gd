extends Area2D
@export var checkpoint : Marker2D


func _on_body_entered(body: CharacterBody2D) -> void:
	body.position = checkpoint.position
