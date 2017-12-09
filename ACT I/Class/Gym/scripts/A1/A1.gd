extends Node2D

onready var first = false
onready var up = get_parent().get_node("A2")
onready var down = null
onready var left = null
onready var right = get_parent().get_node("B1")

func _draw():
	if not first:
		first()
		first = true

func _hide():
	first = false

func first():
	get_node("/root/global").position(self, up, down, right, right)