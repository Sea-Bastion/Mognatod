extends Node2D

onready var done = false
onready var up = get_parent().get_node("A3")
onready var down = get_parent().get_node("A1")
onready var left = null
onready var right = get_parent().get_node("B2")

func _draw():
	if not done:
		first()
		done = true

func _hide():
	done = false

func first():
	get_node("/root/global").position(self, up, down, left, right)