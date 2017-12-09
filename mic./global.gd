extends Node

onready var PScene = preload("res://Menus/Pause/Pause.tscn").instance()
onready var current = null
onready var up = null
onready var down = null
onready var left = null
onready var right = null

func _ready():
	set_process_input(true)

func _input(event):
	if event.is_action_released("ui_cancel") and Globals.get("CanPause"):
		if Globals.get("Paused"):
			get_tree().get_root().remove_child(PScene)

		else:
			var PScene = ResourceLoader.load("res://Menus/Pause/Pause.tscn").instance()
			get_tree().get_root().add_child(PScene)

	elif not current == null:
		if event.is_action_released("ui_up")and not up == null:
			current.hide()
			up.show()
			current = null

		elif event.is_action_released("ui_down") and not down == null:
			current.hide()
			down.show()
			current = null

		elif event.is_action_released("ui_left") and not left == null:
			current.hide()
			left.show()
			current = null

		elif event.is_action_released("ui_right") and not right == null:
			current.hide()
			right.show()
			current = null



func position(current, up, down, left, right):
	self.current = current
	self.up = up
	self.down = down
	self.left = left
	self.right = right