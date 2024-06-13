extends Label

var orbs = 0

func _ready():
	text = str(orbs)


func _on_orb_orb_collected():
	orbs = orbs + 1
	_ready()
	if orbs == 3:
		$Timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://utils/player.tscn")
