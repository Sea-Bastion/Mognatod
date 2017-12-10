extends AnimatedSprite

onready var done = false


func _draw():
	if not Globals.get("Gym_6urp_talk1"):
		set_process_input(true)
		play("LearnWalk0")
		var textbox = get_node("/root/Gym/textbox")
		textbox.play('black')
		textbox.show()
		show()
		Globals.set("Gym_6urp_talk1", true)
		Globals.set("CanPause", true)


func _finished():
	done = true

	if get_animation() == "LearnWalk2":
		get_node("options").show()

func _input(event):

	if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
		if done:
			done = false

			if get_animation() == "LearnWalk0":
				play("LearnWalk1")

			elif get_animation() == "LearnWalk1":
				play("LearnWalk2")

			elif get_animation() == "Stumble":
				play("Success")

			elif get_animation() == "Still":
				play("Failure")

			elif get_animation() == "Success" or get_animation() == "Failure":
				Globals.set("CanWalk", true)
				hide()
				get_node("/root/Gym/textbox").hide()
				set_process_input(false)

func _hide():
	set_process_input(false)

