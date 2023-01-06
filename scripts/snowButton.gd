extends Area

var on = false


func _on_snowButton_body_entered(body):
	if body.name == "GreenFish" or body.name == "BrownFish"  or body.name == "PlayerFish":
		
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
				if child.name == "Snow":
					child.emitting = true
		
		elif on == true:
			$AnimationPlayer.play("off")
			on = false
			for child in get_children():
				if child.name == "Snow":
					child.emitting = false
				
			
