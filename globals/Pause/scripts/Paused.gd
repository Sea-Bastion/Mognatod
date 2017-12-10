extends ColorFrame

onready var done = false

func _draw():
	if not done:
		loadin()
		done = true

func _hide():
	if done:
		done = false

func loadin():
	get_node("paused").set_frame(0)
	get_node("animations").play("loadin")