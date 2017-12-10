extends VButtonArray

#-----------all this sctipt does is handle animation----------

func _on_start_mouse_enter():
	setAnim(get_node("start/sprite"), "hover", "away")

func _on_start_mouse_exit():
	setAnim(get_node("start/sprite"), "away", "hover")

func _on_tweek_mouse_enter():
	setAnim(get_node("tweek/sprite"), "hover", "away")

func _on_tweek_mouse_exit():
	setAnim(get_node("tweek/sprite"), "away", "hover")

func _on_leave_mouse_enter():
	setAnim(get_node("leave/sprite"), "hover", "away")

func _on_leave_mouse_exit():
	setAnim(get_node("leave/sprite"), "away", "hover")


#set sprite correctly
func setAnim(sprite, anim1, anim2):
	String(anim1)
	String(anim2)

	if sprite.is_playing():
		var frame

		if sprite.get_animation() == anim2:
			frame = 7-sprite.get_frame()

		else:
			frame = sprite.get_frame()

		sprite.set_animation(anim1)
		sprite.set_frame(frame)

	else:
		sprite.play(anim1)

func Disable():
	get_node("tweek").set_disabled(true)
	get_node("start").set_disabled(true)
	get_node("leave").set_disabled(true)