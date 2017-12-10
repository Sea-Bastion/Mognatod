extends Node2D

onready var done = false
onready var up = null
onready var down = get_parent().get_node("C2")
onready var left = get_parent().get_node("B3")
onready var right = null

func _draw():
	if not done:
		first()
		done = true

func _hide():
	done = false

func first():
	get_node("/root/global/global").position(self, up, down, left, right)