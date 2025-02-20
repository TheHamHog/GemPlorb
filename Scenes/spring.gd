extends Area2D

@export var jump_strength : int



func _on_body_entered(body: CharacterBody2D) -> void:
	body.velocity.y -= jump_strength
