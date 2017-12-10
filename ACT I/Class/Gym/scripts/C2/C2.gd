extends Node2D

onready var done = false
onready var up = get_parent().get_node("C3")
onready var down = get_parent().get_node("C1")
onready var left = get_parent().get_node("B2")
onready var right = null

func _draw():
	if not done:
		first()
		done = true

func _hide():
	done = false

func first():
	get_node("/root/global/global").position(self, up, down, left, right)