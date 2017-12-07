extends Node

onready var PScene

func _ready():
	set_process_input(true)

func _input(event):
	if event.is_action_released("ui_cancel") and Globals.get("CanPause"):
		if Globals.get("Paused"):
			get_tree().get_root().remove_child(PScene)

		else:
			var PScene = ResourceLoader.load("res://Menus/Pause/Pause.tscn").instance()
			get_tree().get_root().add_child(PScene)
