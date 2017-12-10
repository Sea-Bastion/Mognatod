extends Node2D


func _on_Loading_timeout():
	get_node("Loading/load").hide()
	get_node("Main Menu").show()
