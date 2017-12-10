extends Node2D

onready var done = false
onready var up = get_parent().get_node("C2")
onready var down = null
onready var left = get_parent().get_node("B1")
onready var right = null

func _draw():
	if not done:
		first()
		done = true

func _hide():
	done = false

func first():
	get_node("/root/global/global").position(self, up, down, left, right)