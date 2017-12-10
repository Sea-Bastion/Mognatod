extends Button

onready var Player = get_node("/root/Main/Main Menu/AnimationPlayer")

func _pressed():

	get_parent().Disable()

	get_node("/root/global/SFX").play("Yay")

	Player.play("fade out")
	Player.set_active(true)

func _on_AnimationPlayer_finished():
	get_tree().change_scene("res://ACT I/Class/Gym/Gym.tscn")
