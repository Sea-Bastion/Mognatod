extends Node2D

func _input(event):
	if event.is_action_released("ui_up"):
		hide()
		get_parent().get_node("B2").show()
	elif event.is_action_released("ui_right"):
		hide()
		get_parent().get_node("C1").show()
	elif event.is_action_released("ui_left"):
		hide()
		get_parent().get_node("A1").show()


func _draw():
	set_process_input(true)


func _hide():
	set_process_input(false)