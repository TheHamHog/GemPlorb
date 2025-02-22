extends StaticBody2D

var health = 1

func _process(delta: float) -> void:
	if health == 0:
		queue_free()
		
func break_box():
	health -= 1
