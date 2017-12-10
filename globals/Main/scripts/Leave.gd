extends Button

func _pressed():

	get_node("/root/sound/SFX").play("Yay")

	get_parent().Disable()
	get_tree().quit()
