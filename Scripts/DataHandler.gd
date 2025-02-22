extends Node
#For score
var coins = 0
var gems = 0
var diamonds = 0
var tressure = 0
var final_score = 0

#For Escape
var happy_hour = false

#SwapBlock
var on_off = false

func _process(delta: float) -> void:
	final_score = coins + gems + diamonds + tressure
