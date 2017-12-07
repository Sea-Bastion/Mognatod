extends AnimatedSprite

onready var done = false

func _finished():
	print("done")
	done = true

func _draw():
	set_process_input(true)

func _hide():
	set_process_input(false)

func _input(event):
	if done and event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
		if get_animation() == "msg":
			play("msg2")

		elif get_animation() == "msg2":
			hide()
			get_node("/root/Gym/textbox").hide()

		done = false