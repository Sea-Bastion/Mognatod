extends Node2D

func _draw():
	set_process_input(true)


func _hide():
	set_process_input(false)

func _input(event):
	if event.is_action_released("ui_up"):
		hide()
		get_parent().get_node("A3").show()
	elif event.is_action_released("ui_right"):
		hide()
		get_parent().get_node("B2").show()
	elif event.is_action_released("ui_down"):
		hide()
		get_parent().get_node("A1").show()