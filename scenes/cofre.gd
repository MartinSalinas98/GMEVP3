extends Area



func _on_cofre_body_entered(body):
	if body.name == "GreenFish" or body.name == "BrownFish" or body.name == "PlayerFish":
		
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
		elif(body.rotation_degrees == Vector3 (0,-180,90)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,0,-90)
		elif(body.rotation_degrees == Vector3 (0,0,-90)):
			body.movement = -1*body.speed * body.movement
			body.rotation_degrees = Vector3(0,-180,90)
			
			for child in get_children():
					var animation = get_node("AnimationPlayer")
					animation.play("Abrir")
				
		
