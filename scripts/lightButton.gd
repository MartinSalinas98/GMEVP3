extends Area

var on = false

func _on_lightButton_body_entered(body):
	if body.name == "GreenFish" or body.name == "BrownFish":
		
		if(body.rotation_degrees == Vector3 (0,0,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,180,0)
		elif(body.rotation_degrees == Vector3 (0,180,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,0,0)			
		elif(body.rotation_degrees == Vector3 (90,0,0)):
			body.movement = -1*body.speed * body.movement			
			body.rotation_degrees = Vector3(-90,0,0)
		elif(body.rotation_degrees == Vector3 (-90,0,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(90,0,0)
		elif(body.rotation_degrees == Vector3 (0,-90,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,90,0)
		elif(body.rotation_degrees == Vector3 (90,0,-90)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(-90,-180,90)
		elif(body.rotation_degrees == Vector3 (-90,-90,0)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(90,0,-90)
		elif(body.rotation_degrees == Vector3 (0,180,90)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,180,-90)
		elif(body.rotation_degrees == Vector3 (0,0,-90)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,-180,90)
			
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
				if child.name == "TankLight":
					var tanklight = get_node("TankLight")
					tanklight.light_energy = 4
		elif on == true:
			$AnimationPlayer.play("off")
			on = false
			for child in get_children():
				if child.name == "ChristmasTree":
					var tree = get_node("ChristmasTree")
					var lights = tree.get_node("lights")
					var animation = lights.get_node("AnimationPlayer")
					animation.play("off")
				if child.name == "TankLight":
					var tanklight = get_node("TankLight")
					tanklight.light_energy = 0
