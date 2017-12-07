extends Button

func _pressed():

	get_node("/root/Main/Main Menu/Sounds").play("Yay")

	get_parent().Disable()
	get_tree().quit()
