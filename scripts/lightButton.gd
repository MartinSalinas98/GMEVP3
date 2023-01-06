extends Area

var on = false

func _on_lightButton_body_entered(body):
	if body.name == "GreenFish" or body.name == "PezDani":
		body.movement.z = -1*body.speed * body.movement.z
		body.rotation_degrees += -1*body.rotation_degrees
		if on == false:
			$AnimationPlayer.play("on")
			on = true
			for child in get_children():
				if child.name == "ChristmasTree":
					var tree = get_node("ChristmasTree")						
					var lights = tree.get_node("lights")
					var animation = lights.get_node("AnimationPlayer")
					animation.play("on")
					animation.get_animation("on").set_loop(true)
		elif on == true:
			$AnimationPlayer.play("off")
			on = false
			for child in get_children():
				if child.name == "ChristmasTree":
					var tree = get_node("ChristmasTree")
					var lights = tree.get_node("lights")
					var animation = lights.get_node("AnimationPlayer")
					animation.play("off")
