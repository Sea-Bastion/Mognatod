extends Node2D


func _hide():
	set_process_input(false)


func _draw():
	set_process_input(true)


func _input(event):
	if Globals.get("CanWalk"):
		if event.is_action_released("ui_up"):
			hide()
			get_parent().get_node("B3").show()

		elif event.is_action_released("ui_down"):
			hide()
			get_parent().get_node("B1").show()

		elif event.is_action_released("ui_left"):
			hide()
			get_parent().get_node("A2").show()

		elif event.is_action_released("ui_right"):
			hide()
			get_parent().get_node("C2").show()