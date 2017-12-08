extends Node2D

func _draw():
	set_process_input(true)

func _hide():
	set_process_input(false)


func _input(event):
	if event.is_action_released("ui_left"):
		hide()
		get_parent().get_node("B3").show()
	elif event.is_action_released("ui_down"):
		hide()
		get_parent().get_node("C2").show()