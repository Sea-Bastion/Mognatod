extends Button


func _pressed():
	var text = get_parent().get_node("Note Text")
	text.show()
	text.play("msg")


	var textbox = get_node("/root/Gym/textbox")
	textbox.play("white")
	textbox.show()

