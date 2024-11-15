extends Node2D

class_name Pipes

const SCROLLSPEED: float = 120.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= SCROLLSPEED * delta
	check_off_screen()
 

func check_off_screen() -> void:
	if position.x < -500:
		queue_free()


func _on_screen_exited() -> void:
	queue_free()
