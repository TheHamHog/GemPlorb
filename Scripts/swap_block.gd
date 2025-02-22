extends StaticBody2D

@onready var blocks: AnimatedSprite2D = $Blocks
@onready var block_coll: CollisionShape2D = $BlockColl

func _process(delta: float) -> void:

	if DataHandler.on_off == true:
		on_block()
	elif  DataHandler.on_off == false:
		off_block()

func on_block():
	blocks.play("on")
	block_coll.disabled = false

func off_block():
	blocks.play("off")
	block_coll.disabled = true
