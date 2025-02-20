extends StaticBody2D

enum swap {ON, OFF}
@export var swap_block : swap
@onready var blocks: AnimatedSprite2D = $Blocks
@onready var block_coll: CollisionShape2D = $BlockColl

func _process(delta: float) -> void:
	
	if swap_block == swap.ON:
		on_block()
	
	if swap_block == swap.OFF:
		off_block()



func on_block():
	blocks.play("on")
	block_coll.disabled = false

func off_block():
	blocks.play("off")
	block_coll.disabled = true
