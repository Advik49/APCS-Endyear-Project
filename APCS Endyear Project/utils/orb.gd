extends Area3D

signal orbCollected

func _on_body_entered(body):
	if body.name == "Player":
		$Timer.start()


func _on_timer_timeout():
	emit_signal("orbCollected")
	queue_free()
