extends AnimatedSprite


func _ready():
	play("loading in")


func _finished():
	play("loading")
