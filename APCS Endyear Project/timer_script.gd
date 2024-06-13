extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Reset_Timer()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var seconds = 0
var minutes = 0
var Dseconds = 30
var Dminutes =1
func _on_timer_timeout():
	if seconds==0:
		if minutes >0:
			minutes-=1
			seconds = 60
	seconds -= 1
	$Label.text = String(minutes)+":"+String(seconds)
	pass # Replace with function body.


func Reset_Timer():
	seconds = Dseconds
	minutes = Dminutes
