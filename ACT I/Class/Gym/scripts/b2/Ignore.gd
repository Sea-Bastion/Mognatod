extends Button

func _pressed():
	get_parent().hide()
	get_node("/root/Gym/B2/text").play("Still")
	get_node("/root/Gym/textbox").play("white")
