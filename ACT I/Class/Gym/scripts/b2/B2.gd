extends Node2D

onready var done = false
onready var up = get_parent().get_node("B3")
onready var down = get_parent().get_node("B1")
onready var left = get_parent().get_node("A2")
onready var right = get_parent().get_node("C2")

func _draw():
	if not done:
		first()
		done = true

func _hide():
	done = false

func first():
	get_node("/root/global").position(self, up, down, left, right)