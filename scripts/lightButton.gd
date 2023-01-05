extends Area

var on = false

func _on_lightButton_body_entered(body):
	if body.name == "greenFish":
			body.movement.z = -1*body.speed
			body.rotation_degrees = Vector3(0,180,0)
			if on == false:
				$AnimationPlayer.play("on")
				on = true
				for child in get_children():
					if child.name == "christmasTree":
						var tree = get_node("christmasTree")						
						var lights = tree.get_node("lights")
						for childlights in lights.get_children():
							childlights.light_energy = 10

			elif on == true:
				$AnimationPlayer.play("off")
				on = false
				for child in get_children():
					if child.name == "christmasTree":
						var tree = get_node("christmasTree")
						var lights = tree.get_node("lights")
						for childlights in lights.get_children():
							childlights.light_energy = 0
